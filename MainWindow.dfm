object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 392
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Chart: TChart
    Left = 8
    Top = 8
    Width = 836
    Height = 250
    Foot.Shadow.Visible = False
    Legend.Symbol.DefaultPen = False
    Legend.Symbol.Visible = False
    Legend.Visible = False
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' a+b*sin(c*t)')
    View3D = False
    View3DOptions.Orthogonal = False
    Zoom.MouseButton = mbMiddle
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      18
      15
      18)
    ColorPaletteIndex = 13
    object Series2: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {0000000000}
    end
  end
  object btnExit: TButton
    Left = 439
    Top = 264
    Width = 402
    Height = 121
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = btnExitClick
  end
  object btnOpenFile: TButton
    Left = 8
    Top = 344
    Width = 425
    Height = 40
    Caption = #1054#1090#1082#1088#1099#1090#1100' txt '#1092#1072#1081#1083
    TabOrder = 2
    OnClick = btnOpenFileClick
  end
  object lineEditFilePath: TEdit
    Left = 8
    Top = 264
    Width = 425
    Height = 21
    TabOrder = 3
  end
  object btnFindFile: TButton
    Left = 8
    Top = 296
    Width = 425
    Height = 42
    Caption = #1053#1072#1081#1090#1080' txt '#1092#1072#1081#1083
    TabOrder = 4
    OnClick = btnFindFileClick
  end
  object OpenDialog1: TOpenDialog
    Left = 65528
    Top = 376
  end
end
