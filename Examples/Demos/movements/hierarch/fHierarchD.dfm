object FormHierarchy: TFormHierarchy
  Left = 204
  Top = 101
  Caption = 'Hierarchy'
  ClientHeight = 462
  ClientWidth = 594
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    594
    462)
  TextHeight = 13
  object SceneViewer: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 594
    Height = 462
    Camera = Camera
    Buffer.BackgroundColor = clSilver
    FieldOfView = 133.184387207031300000
    PenAsTouch = False
    Align = alClient
    TabOrder = 0
  end
  object CBPlay: TCheckBox
    Left = 267
    Top = 18
    Width = 42
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'Play'
    TabOrder = 1
  end
  object GLScene1: TGLScene
    Left = 80
    Top = 24
    object Camera: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 100.000000000000000000
      TargetObject = dcSun
      Position.Coordinates = {000020410000A040000020410000803F}
    end
    object LightSource: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      SpotCutOff = 180.000000000000000000
    end
    object dcSun: TGLDummyCube
      CubeSize = 1.000000000000000000
      object Sun: TGLSphere
        Material.FrontProperties.Ambient.Color = {0000000000000000000000000000803F}
        Material.FrontProperties.Emission.Color = {0000803F0000803F000000000000803F}
        ShowAxes = True
        Radius = 0.500000000000000000
      end
    end
    object dcEarth: TGLDummyCube
      CubeSize = 2.000000000000000000
      object Earth: TGLSphere
        Material.FrontProperties.Diffuse.Color = {0000003F0000003F0000803F0000803F}
        Material.FrontProperties.Emission.Color = {0000000000000000AE47213F0000803F}
        Position.Coordinates = {0000404000000000000000000000803F}
        Radius = 0.300000011920929000
        object dcMoon: TGLDummyCube
          Direction.Coordinates = {00000000F304353FF304353F00000000}
          Up.Coordinates = {00000000F304353FF30435BF00000000}
          CubeSize = 1.000000000000000000
          object Moon: TGLSphere
            Position.Coordinates = {0000803F00000000000000000000803F}
            Radius = 0.100000001490116100
          end
        end
      end
    end
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    OnProgress = GLCadencer1Progress
    Left = 100
    Top = 110
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = SceneViewer
    FormCaption = 'Hierarchy - %FPS'
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
    Left = 40
    Top = 258
  end
  object GLMaterialLibrary1: TGLMaterialLibrary
    Materials = <
      item
        Name = 'Sun'
        Tag = 0
      end
      item
        Name = 'Earth'
        Tag = 0
      end
      item
        Name = 'Moon'
        Tag = 0
      end>
    Left = 360
    Top = 88
  end
end
