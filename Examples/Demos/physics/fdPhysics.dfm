object FormPhysics: TFormPhysics
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Physics'
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
        071000000009540054007200650065004E006F00640065003300000000000000
        00000000FFFFFFFFFFFFFFFF00000000000000000000000000010A43006C006F
        00740068004100630074006F0072000000390000000000000000000000FFFFFF
        FFFFFFFFFF00000000000000000000000000010D4E006500770074006F006E00
        440065006E0073006900740079000000370000000000000000000000FFFFFFFF
        FFFFFFFF00000000000000000000000000010C4E006500770074006F006E004A
        006F0069006E007400730000003B0000000000000000000000FFFFFFFFFFFFFF
        FF00000000000000000000000000010E4E006500770074006F006E004D006100
        740065007200690061006C000000330000000000000000000000FFFFFFFFFFFF
        FFFF00000000000000000000000000010A4E006500770074006F006E00500069
        0063006B000000370000000000000000000000FFFFFFFFFFFFFFFF0000000000
        0000000000000000010C4E006500770074006F006E00530069006D0070006C00
        650000003D0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
        0000000000010F4E006500770074006F006E00570061006C006B004300610072
        007200790000003D0000000000000000000000FFFFFFFFFFFFFFFF0000000000
        0000000000000000010F4E006500770074006F006E00570061006C006B005300
        68006F006F0074000000350000000000000000000000FFFFFFFFFFFFFFFF0000
        0000000000000000000000010B4F006400650043006C006F0074006800690066
        0079000000350000000000000000000000FFFFFFFFFFFFFFFF00000000000000
        000000000000010B4F006400650043006F006E007600650079006F0072000000
        330000000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000
        00010A4F0064006500460075007200620061006C006C00000033000000000000
        0000000000FFFFFFFFFFFFFFFF00000000000000000000000000010A4F006400
        65004D0061006300680069006E0065000000330000000000000000000000FFFF
        FFFFFFFFFFFF00000000000000000000000000010A4F00640065005200610067
        0064006F006C006C000000310000000000000000000000FFFFFFFFFFFFFFFF00
        00000000000000000000000001094F0064006500530069006D0070006C006500
        0000330000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
        000000010A4F00640065005400650072007200610069006E0000003700000000
        00000000000000FFFFFFFFFFFFFFFF00000000000000000000000000010C5000
        68007900730058005300630061007400740065007200}
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
