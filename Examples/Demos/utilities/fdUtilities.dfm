object FormUtilities: TFormUtilities
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Utilities'
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
        070B00000009540054007200650065004E006F00640065003500000000000000
        00000000FFFFFFFFFFFFFFFF00000000000000000000000000010B4100720063
        00680069007600650045006400690074000000370000000000000000000000FF
        FFFFFFFFFFFFFF00000000000000000000000000010C41007200630068006900
        760065007200440065006D006F0000002D0000000000000000000000FFFFFFFF
        FFFFFFFF00000000000000000000000000010746006F006E007400470065006E
        0000002D0000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
        00000000010747004C0049006E0066006F007300000031000000000000000000
        0000FFFFFFFFFFFFFFFF00000000000000000000000000010947007500690045
        006400690074006F00720000002F0000000000000000000000FFFFFFFFFFFFFF
        FF0000000000000000000000000001084800540046005500740069006C007300
        00002F0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
        00000001084A006F00790073007400690063006B0000002B0000000000000000
        000000FFFFFFFFFFFFFFFF0000000000000000000000000001064B0065007900
        4D006100700000002F0000000000000000000000FFFFFFFFFFFFFFFF00000000
        00000000000000000001084C0061006E006700750061006700650000002F0000
        000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000000108
        5200650063006F0072006400650072000000350000000000000000000000FFFF
        FFFFFFFFFFFF00000000000000000000000000010B530063007200650065006E
        0053006100760065007200}
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
