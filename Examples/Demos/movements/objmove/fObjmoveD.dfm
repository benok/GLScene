object FormObjmove: TFormObjmove
  Left = 87
  Top = 128
  Caption = 'Moving Objects with Mouse'
  ClientHeight = 629
  ClientWidth = 1001
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  TextHeight = 20
  object Scn: TGLSceneViewer
    Left = 169
    Top = 0
    Width = 832
    Height = 611
    Camera = GLCamera
    Buffer.BackgroundColor = clBackground
    FieldOfView = 36.816364288330080000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = ScnMouseDown
    OnMouseMove = ScnMouseMove
    OnMouseWheel = FormMouseWheel
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 169
    Height = 611
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 169
      Height = 40
      Align = alTop
      Caption = 'Select and move cubes with mouse'
      ShowAccelChar = False
      WordWrap = True
      ExplicitWidth = 156
    end
    object Label3: TLabel
      Left = 0
      Top = 40
      Width = 169
      Height = 40
      Align = alTop
      Caption = 'Default movement is on the XY plane.'
      ShowAccelChar = False
      WordWrap = True
      ExplicitWidth = 163
    end
    object Label4: TLabel
      Left = 0
      Top = 80
      Width = 169
      Height = 40
      Align = alTop
      Caption = 'Shift + Drag moves on the XZ plane.'
      ShowAccelChar = False
      WordWrap = True
      ExplicitWidth = 153
    end
    object Button1: TButton
      Left = 618
      Top = 8
      Width = 155
      Height = 25
      Caption = 'Near: (0,0) Eye -> Obj'
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 120
      Width = 169
      Height = 42
      Align = alTop
      Caption = 'Options'
      TabOrder = 1
      object ShowAxes: TCheckBox
        Left = 5
        Top = 18
        Width = 145
        Height = 17
        Caption = 'Show selection axes'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = ShowAxesClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 611
    Width = 1001
    Height = 18
    Panels = <>
  end
  object GLScene1: TGLScene
    Left = 296
    Top = 8
    object Floor: TGLCube
      Material.FrontProperties.Diffuse.Color = {C5C4C43ECDCCCC3E8382023FE3A53B3F}
      Position.Coordinates = {00000000000000005C8F82BF0000803F}
      CubeSize = {00000040000000400AD7233C}
    end
    object GLCamera: TGLCamera
      DepthOfView = 1000.000000000000000000
      FocalLength = 917.929199218750000000
      NearPlaneBias = 0.001000000047497451
      TargetObject = DummyCube
      Position.Coordinates = {0000B8410000A041000080410000803F}
      Direction.Coordinates = {2EF964BF2EF9E43E0000000000000000}
      Up.Coordinates = {00000000000000000000803F00000000}
    end
    object DummyCube: TGLDummyCube
      Position.Coordinates = {0000803F0000803F0000003F0000803F}
      Visible = False
      CubeSize = 0.200000002980232200
      EdgeColor.Color = {DEDD5D3FDEDD5D3FE9E8683F0000803F}
    end
    object TopLight: TGLLightSource
      Ambient.Color = {0000003F0000003F0000003F0000803F}
      ConstAttenuation = 0.800000011920929000
      Diffuse.Color = {EAE9693FEAE9693FEAE9693F0000803F}
      Position.Coordinates = {0000804100005041000040410000803F}
      SpotCutOff = 180.000000000000000000
    end
    object Cube1: TGLCube
      Material.BackProperties.Diffuse.Color = {8382023F8584043FB1B0303F8195633F}
      Material.FrontProperties.Diffuse.Color = {8382023F8584043FB1B0303F6DE75B3F}
      Material.BlendingMode = bmTransparency
      Material.Texture.ImageAlpha = tiaAlphaFromIntensity
      Material.Texture.TextureMode = tmModulate
      Direction.Coordinates = {0000803F000000000000000000000000}
      Position.Coordinates = {CDCCCC3DCDCCCC3D666666BF0000803F}
      Scale.Coordinates = {CDCC4C3ECDCC4C3ECDCC4C3E00000000}
    end
    object Cube2: TGLCube
      Position.Coordinates = {CDCCCCBECDCCCC3E000000BF0000803F}
      CubeSize = {0000803E0000803E0000803E}
    end
    object XArrow: TGLArrowLine
      Material.FrontProperties.Ambient.Color = {00000000000000000000803F0000803F}
      Direction.Coordinates = {0000803F000000000000000000000000}
      Position.Coordinates = {CDCCCC3D000080BF000080BF0000803F}
      Up.Coordinates = {000000002EBD3BB30000803F00000000}
      BottomRadius = 0.009999999776482582
      Height = 2.200000047683716000
      TopRadius = 0.009999999776482582
      TopArrowHeadHeight = 0.200000002980232200
      TopArrowHeadRadius = 0.050000000745058060
      BottomArrowHeadHeight = 0.500000000000000000
      BottomArrowHeadRadius = 0.050000000745058060
    end
    object YArrow: TGLArrowLine
      Material.FrontProperties.Ambient.Color = {000000000000003F000000000000803F}
      Direction.Coordinates = {000000000000803F0000000000000000}
      Position.Coordinates = {000080BFCDCCCC3D000080BF0000803F}
      Up.Coordinates = {2EBD3BB3000000000000803F00000000}
      BottomRadius = 0.009999999776482582
      Height = 2.200000047683716000
      TopRadius = 0.009999999776482582
      TopArrowHeadHeight = 0.200000002980232200
      TopArrowHeadRadius = 0.050000000745058060
      BottomArrowHeadHeight = 0.500000000000000000
      BottomArrowHeadRadius = 0.200000002980232200
    end
    object ZArrow: TGLArrowLine
      Material.FrontProperties.Ambient.Color = {0000803F00000000000000000000803F}
      Position.Coordinates = {000080BF000080BF000000BF0000803F}
      BottomRadius = 0.009999999776482582
      Height = 1.000000000000000000
      TopRadius = 0.009999999776482582
      TopArrowHeadHeight = 0.200000002980232200
      TopArrowHeadRadius = 0.050000000745058060
      BottomArrowHeadHeight = 0.500000000000000000
      BottomArrowHeadRadius = 0.050000000745058060
    end
    object TxtX: TGLSpaceText
      Direction.Coordinates = {F30435BFF30435BF0000000000000000}
      Position.Coordinates = {0000C03F000080BF000080BF0000803F}
      Scale.Coordinates = {9A99993E9A99993E9A99993E00000000}
      Up.Coordinates = {00000000000000000000803F00000000}
      Extrusion = 0.200000002980232200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'X')
      CharacterRange = stcrAlphaNum
    end
    object TxtY: TGLSpaceText
      Direction.Coordinates = {F40435BFF20435BF0000000000000000}
      Position.Coordinates = {000080BF9A99D93F000080BF0000803F}
      Scale.Coordinates = {9A99993E9A99993E9A99993E00000000}
      Up.Coordinates = {00000000000000000000803F00000000}
      Extrusion = 0.200000002980232200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'Y')
      CharacterRange = stcrAlphaNum
    end
    object TxtZ: TGLSpaceText
      Direction.Coordinates = {F304353FF304353F0000000000000000}
      Position.Coordinates = {000000C0000000C0CDCCCCBE0000803F}
      Scale.Coordinates = {9A99993E9A99993E9A99993E00000000}
      Up.Coordinates = {00000080000000000000803F00000000}
      Extrusion = 0.200000002980232200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'Z')
      CharacterRange = stcrAlphaNum
    end
    object TopText: TGLHUDText
      Position.Coordinates = {0000A0400000A040000000000000803F}
      BitmapFont = GLWindowsBitmapFont1
      Text = 'TopText'
      Rotation = 0.000000000000000000
    end
    object ObjText: TGLHUDText
      Position.Coordinates = {0000C0400000A841000000000000803F}
      BitmapFont = GLWindowsBitmapFont1
      Text = 'ObjText'
      Rotation = 0.000000000000000000
    end
  end
  object GLWindowsBitmapFont1: TGLWindowsBitmapFont
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 448
    Top = 8
  end
end
