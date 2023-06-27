object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cg Cel Shading'
  ClientHeight = 337
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 515
    Height = 318
    Camera = GLCamera1
    FieldOfView = 145.086883544921900000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    OnMouseMove = GLSceneViewer1MouseMove
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 318
    Width = 515
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitLeft = 224
    ExplicitTop = 208
    ExplicitWidth = 0
  end
  object GLScene1: TGLScene
    Left = 40
    Top = 16
    object GLDummyCube1: TGLDummyCube
      CubeSize = 1.000000000000000000
      object GLCamera1: TGLCamera
        DepthOfView = 100.000000000000000000
        FocalLength = 50.000000000000000000
        TargetObject = GLDummyCube1
        Position.Coordinates = {00000000000000400000A0400000803F}
        Direction.Coordinates = {00000000000000000000803F00000000}
        object GLLightSource1: TGLLightSource
          ConstAttenuation = 1.000000000000000000
          SpotCutOff = 180.000000000000000000
        end
      end
    end
    object GLActor1: TGLActor
      Material.MaterialLibrary = GLMaterialLibrary1
      Material.LibMaterialName = 'CgShaderMat'
      Direction.Coordinates = {000000000000803F2EBD3BB300000000}
      PitchAngle = 90.000000000000000000
      Up.Coordinates = {000000002EBD3BB3000080BF00000000}
      Interval = 100
    end
  end
  object CgCellShader: TCgShader
    VertexProgram.OnApply = CgCellShaderApplyVP
    FragmentProgram.OnApply = CgCellShaderApplyFP
    FragmentProgram.OnUnApply = CgCellShaderUnApplyFP
    OnApplyVP = CgCellShaderApplyVP
    OnApplyFP = CgCellShaderApplyFP
    OnUnApplyFP = CgCellShaderUnApplyFP
    OnInitialize = CgCellShaderInitialize
    Left = 120
    Top = 72
  end
  object GLMaterialLibrary1: TGLMaterialLibrary
    Materials = <
      item
        Name = 'CgShaderMat'
        Tag = 0
        Material.Texture.Disabled = False
        Shader = CgCellShader
      end>
    Left = 112
    Top = 16
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    Left = 40
    Top = 72
  end
  object AsyncTimer1: TGLAsyncTimer
    Enabled = True
    OnTimer = AsyncTimer1Timer
    Left = 256
    Top = 16
  end
end
