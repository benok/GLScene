object BumpDemo_frm: TBumpDemo_frm
  Left = 167
  Top = 182
  Caption = 'Cg BumpMapping'
  ClientHeight = 638
  ClientWidth = 1019
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object SceneViewer: TGLSceneViewer
    Left = 289
    Top = 0
    Width = 730
    Height = 638
    Camera = Camera
    Buffer.BackgroundColor = clSkyBlue
    Buffer.AmbientColor.Color = {00000000000000000000000000000000}
    Buffer.AntiAliasing = aaNone
    FieldOfView = 145.189712524414100000
    PenAsTouch = False
    Align = alClient
    TabOrder = 0
  end
  object Shaders_ctrl: TPageControl
    Left = 0
    Top = 0
    Width = 289
    Height = 638
    ActivePage = ts_Vertex_Program
    Align = alLeft
    TabOrder = 1
    object ts_Fragment_Program: TTabSheet
      Caption = 'Pixel Shader'
      object FP_Memo: TMemo
        Left = 0
        Top = 24
        Width = 273
        Height = 433
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 0
        OnChange = FP_MemoChange
      end
      object FP_btn: TButton
        Left = 200
        Top = 464
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 1
        OnClick = FP_btnClick
      end
      object FP_cb: TCheckBox
        Left = 0
        Top = 0
        Width = 97
        Height = 17
        Caption = 'Enabled'
        TabOrder = 2
        OnClick = FP_cbClick
      end
    end
    object ts_Vertex_Program: TTabSheet
      Caption = 'Vertex Shader'
      ImageIndex = 1
      object VP_Memo: TMemo
        Left = 0
        Top = 24
        Width = 273
        Height = 433
        ScrollBars = ssBoth
        TabOrder = 0
        OnChange = VP_MemoChange
      end
      object VP_btn: TButton
        Left = 200
        Top = 464
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 1
        OnClick = VP_btnClick
      end
      object VP_cb: TCheckBox
        Left = 0
        Top = 0
        Width = 97
        Height = 17
        Caption = 'Enabled'
        TabOrder = 2
        OnClick = VP_cbClick
      end
    end
  end
  object Scene: TGLScene
    VisibilityCulling = vcObjectBased
    Left = 360
    Top = 16
    object LightSource: TGLLightSource
      Ambient.Color = {0000803F0000803F0000803F0000803F}
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {000000C00000803F000000400000803F}
      LightStyle = lsOmni
      SpotCutOff = 180.000000000000000000
      object Light_Sphere: TGLSphere
        Material.FrontProperties.Ambient.Color = {0000803F0000803F0000803F0000803F}
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.FrontProperties.Emission.Color = {0000803F0000803F0000803F0000803F}
        Material.FrontProperties.Specular.Color = {0000803F0000803F0000803F0000803F}
        Radius = 0.100000001490116100
      end
    end
    object Dummy: TGLDummyCube
      CubeSize = 1.000000000000000000
    end
    object Cube_2: TGLCube
      Position.Coordinates = {0000803F00000000000000000000803F}
      CubeSize = {6666A63F6666A63F6666A63F}
    end
    object GLSphere1: TGLSphere
      Position.Coordinates = {000080BF00000000000000000000803F}
      Radius = 1.000000000000000000
      Slices = 64
    end
    object Camera: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 100.000000000000000000
      TargetObject = Dummy
      Position.Coordinates = {00000000000000000000A0400000803F}
    end
  end
  object Cadencer: TGLCadencer
    Scene = Scene
    OnProgress = CadencerProgress
    Left = 440
    Top = 16
  end
  object CgShader: TCgShader
    VertexProgram.OnApply = CgShaderApplyVP
    FragmentProgram.OnApply = CgShaderApplyFP
    OnApplyVP = CgShaderApplyVP
    OnApplyFP = CgShaderApplyFP
    Left = 360
    Top = 72
  end
  object MaterialLibrary: TGLMaterialLibrary
    Left = 512
    Top = 16
  end
  object Timer: TGLAsyncTimer
    Enabled = True
    Interval = 500
    OnTimer = TimerTimer
    ThreadPriority = tpNormal
    Left = 440
    Top = 72
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = SceneViewer
    FormCaption = 'Cg BumpMapping - %FPS'
    KeyCombinations = <
      item
        ShiftState = [ssLeft, ssRight]
        Action = snaZoom
      end
      item
        ShiftState = [ssLeft]
        Action = snaMoveAroundTarget
      end
      item
        ShiftState = [ssRight]
        Action = snaMoveAroundTarget
      end>
    Left = 688
    Top = 120
  end
end
