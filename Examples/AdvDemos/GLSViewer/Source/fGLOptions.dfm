inherited GLOptions: TGLOptions
  HelpContext = 0
  Caption = 'Options'
  ClientHeight = 394
  ClientWidth = 521
  OnClose = FormClose
  ExplicitWidth = 545
  ExplicitHeight = 458
  TextHeight = 20
  inherited PanelTop: TPanel
    Width = 521
    ExplicitWidth = 492
  end
  inherited PanelMiddle: TPanel
    Width = 521
    Height = 318
    ExplicitWidth = 521
    ExplicitHeight = 318
    object Label1: TLabel [0]
      Left = 296
      Top = 33
      Width = 86
      Height = 20
      Caption = 'Background'
    end
    inherited Memo: TMemo
      Width = 519
      Height = 316
      TabOrder = 2
      ExplicitWidth = 519
      ExplicitHeight = 316
    end
    object CheckBoxAxis: TCheckBox
      Left = 96
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Show Axes'
      TabOrder = 0
      OnClick = CheckBoxAxisClick
    end
    object PanelBackground: TPanel
      Left = 375
      Top = 27
      Width = 25
      Height = 25
      Hint = 'Click to change background colour'
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      OnClick = PanelBackgroundClick
    end
    object RadioGroupLanguage: TRadioGroup
      Left = 96
      Top = 88
      Width = 329
      Height = 137
      Caption = 'Language'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'English'
        'Russian'
        'Spanish'
        'French'
        'German'
        'Italian')
      TabOrder = 3
      OnClick = RadioGroupLanguageClick
    end
  end
  inherited PanelBottom: TPanel
    Top = 353
    Width = 521
    ExplicitTop = 353
    ExplicitWidth = 492
    inherited ButtonOK: TButton
      OnClick = ButtonOKClick
    end
  end
end
