object FormMultiMat: TFormMultiMat
  Left = 225
  Top = 115
  Caption = 'Multi Material'
  ClientHeight = 449
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 620
    Height = 449
    Camera = GLCamera1
    Buffer.BackgroundColor = clTeal
    FieldOfView = 154.888351440429700000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    TabOrder = 0
  end
  object GLScene1: TGLScene
    Left = 24
    Top = 8
    object GLDummyCube1: TGLDummyCube
      CubeSize = 1.000000000000000000
      object GLCamera1: TGLCamera
        DepthOfView = 100.000000000000000000
        FocalLength = 50.000000000000000000
        SceneScale = 3.000000000000000000
        TargetObject = GLDummyCube1
        Position.Coordinates = {0000803F000040400000A0C00000803F}
        object GLLightSource1: TGLLightSource
          ConstAttenuation = 1.000000000000000000
          SpotCutOff = 180.000000000000000000
        end
      end
    end
    object GLCube1: TGLCube
      Material.MaterialLibrary = GLMatLib1
      Material.LibMaterialName = 'MultipassMat'
      Scale.Coordinates = {0000003F0000003F0000003F00000000}
      CubeSize = {000000400000004000000040}
    end
  end
  object GLMatLib1: TGLMaterialLibrary
    Materials = <
      item
        Name = 'MultipassMat'
        Tag = 0
        Shader = GLMultiMaterialShader1
      end>
    Left = 120
    Top = 8
  end
  object GLMatLib2: TGLMaterialLibrary
    Left = 120
    Top = 64
  end
  object GLMultiMaterialShader1: TGLMultiMaterialShader
    MaterialLibrary = GLMatLib2
    VisibleAtDesignTime = False
    ShaderStyle = ssReplace
    Left = 240
    Top = 64
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    OnProgress = GLCadencer1Progress
    Left = 24
    Top = 64
  end
  object GLTexCombineShader1: TGLTexCombineShader
    Combiners.Strings = (
      'Tex0:=PrimaryColor dot3 Tex0;')
    DesignTimeEnabled = False
    Left = 240
    Top = 8
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
    FormCaption = 'Multi Material - %FPS'
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
    Left = 200
    Top = 152
  end
end
