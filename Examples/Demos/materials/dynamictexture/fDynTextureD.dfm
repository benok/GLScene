object FormDynamicTexture: TFormDynamicTexture
  Left = 407
  Top = 201
  Caption = 'Dynamic Texture'
  ClientHeight = 415
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  TextHeight = 13
  object SceneViewer: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 600
    Height = 415
    Camera = GLCamera1
    Buffer.BackgroundColor = clGray
    FieldOfView = 152.904129028320300000
    PenAsTouch = False
    Align = alClient
    TabOrder = 0
  end
  object Scene: TGLScene
    Left = 64
    Top = 16
    object GLDirectOpenGL1: TGLDirectOpenGL
      UseBuildList = False
      OnRender = GLDirectOpenGL1Render
      Blend = False
    end
    object GLDummyCube1: TGLDummyCube
      CubeSize = 1.000000000000000000
      object GLCube1: TGLCube
        Material.MaterialLibrary = MatLib
        Material.LibMaterialName = 'Anim'
      end
    end
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000404000002041000020410000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLCamera1: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = GLDummyCube1
      Position.Coordinates = {0000803F0000803F000040400000803F}
    end
  end
  object MatLib: TGLMaterialLibrary
    Materials = <
      item
        Name = 'Anim'
        Tag = 0
        Material.Texture.TextureMode = tmReplace
      end>
    Left = 160
    Top = 16
  end
  object Cadencer: TGLCadencer
    Scene = Scene
    OnProgress = CadencerProgress
    Left = 64
    Top = 88
  end
  object Timer: TTimer
    Interval = 3000
    OnTimer = TimerTimer
    Left = 160
    Top = 88
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = SceneViewer
    FormCaption = 'Dynamic Texture - %FPS'
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
    Left = 392
    Top = 24
  end
end
