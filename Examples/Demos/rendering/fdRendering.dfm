object FormRendering: TFormRendering
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Rendering'
  ClientHeight = 814
  ClientWidth = 1138
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 168
  TextHeight = 30
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 226
    Height = 814
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    TabOrder = 0
    object tvBench: TTreeView
      Left = 1
      Top = 1
      Width = 224
      Height = 812
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Indent = 33
      TabOrder = 0
      Items.NodeData = {
        071100000009540054007200650065004E006F00640065002F00000000000000
        00000000FFFFFFFFFFFFFFFF0000000000000000000000000001084200610073
        0069006300530044004C000000270000000000000000000000FFFFFFFFFFFFFF
        FF00000000000000000000000000010442006C00750072000000370000000000
        000000000000FFFFFFFFFFFFFFFF00000000000000000000000000010C42006C
        007500720041006400760061006E006300650064000000330000000000000000
        000000FFFFFFFFFFFFFFFF00000000000000000000000000010A430065006C00
        530068006100640069006E00670000002D0000000000000000000000FFFFFFFF
        FFFFFFFF000000000000000000000000000107430075006C006C0069006E0067
        000000250000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
        00000000010346006F0067000000330000000000000000000000FFFFFFFFFFFF
        FFFF00000000000000000000000000010A460075006C006C0053006300720065
        0065006E000000330000000000000000000000FFFFFFFFFFFFFFFF0000000000
        0000000000000000010A49006E00760061007200690061006E00630065000000
        310000000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000
        0001094D0065006D005600690065007700650072000000330000000000000000
        000000FFFFFFFFFFFFFFFF00000000000000000000000000010A4D0075006C00
        74006900500072006F00780079000000370000000000000000000000FFFFFFFF
        FFFFFFFF00000000000000000000000000010C4D0075006C0074006900540065
        00780074007500720065000000330000000000000000000000FFFFFFFFFFFFFF
        FF00000000000000000000000000010A4F006300740072006500650044006500
        6D006F000000290000000000000000000000FFFFFFFFFFFFFFFF000000000000
        000000000000000105500068006F006E00670000003D00000000000000000000
        00FFFFFFFFFFFFFFFF00000000000000000000000000010F5100750061006400
        5400720065006500430075006C006C0069006E00670000003D00000000000000
        00000000FFFFFFFFFFFFFFFF00000000000000000000000000010F520065006E
        0064006500720054006F00540065007800740075007200650000002B00000000
        00000000000000FFFFFFFFFFFFFFFF0000000000000000000000000001065300
        6B00790042006F00780000002F0000000000000000000000FFFFFFFFFFFFFFFF
        00000000000000000000000000010854006F004200690074006D0061007000}
    end
  end
  object PageControl: TPageControl
    Left = 226
    Top = 0
    Width = 912
    Height = 814
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    TabOrder = 1
    object tsOne: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'One'
      TabVisible = False
    end
    object tsTwo: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Two'
      ImageIndex = 1
      TabVisible = False
    end
    object tsThree: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Three'
      ImageIndex = 2
      TabVisible = False
    end
    object tsFour: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Four'
      ImageIndex = 3
      TabVisible = False
    end
    object tsFive: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Five'
      ImageIndex = 4
      TabVisible = False
    end
    object tsSix: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Six'
      ImageIndex = 5
      TabVisible = False
    end
    object tsSeven: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Seven'
      ImageIndex = 6
      TabVisible = False
    end
  end
end
