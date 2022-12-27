object FormNewtonDensity: TFormNewtonDensity
  Left = 0
  Top = 0
  Caption = 'Density'
  ClientHeight = 398
  ClientWidth = 572
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
    Width = 572
    Height = 398
    Camera = GLCamera1
    FieldOfView = 151.792068481445300000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    TabOrder = 0
  end
  object SpinEdit1: TSpinEdit
    Left = 16
    Top = 103
    Width = 75
    Height = 21
    EditorEnabled = False
    MaxValue = 20
    MinValue = 0
    TabOrder = 1
    Value = 1
  end
  object SpinEdit2: TSpinEdit
    Left = 16
    Top = 159
    Width = 75
    Height = 21
    EditorEnabled = False
    MaxValue = 10
    MinValue = 0
    TabOrder = 2
    Value = 1
  end
  object SpinEdit3: TSpinEdit
    Left = 16
    Top = 215
    Width = 75
    Height = 21
    EditorEnabled = False
    MaxValue = 10
    MinValue = 0
    TabOrder = 3
    Value = 1
  end
  object GLScene1: TGLScene
    Left = 40
    Top = 16
    object GLCamera1: TGLCamera
      DepthOfView = 10000.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = Mag
      Position.Coordinates = {000000000000A040000070410000803F}
      object GLLightSource1: TGLLightSource
        ConstAttenuation = 1.000000000000000000
        SpotCutOff = 180.000000000000000000
      end
    end
    object GLPlane1: TGLPlane
      Material.FrontProperties.Diffuse.Color = {000000000000803F0000803F0000803F}
      Material.FrontProperties.Emission.Color = {00000000F8FEFE3E0000803F0000803F}
      Material.BlendingMode = bmModulate
      Material.FaceCulling = fcNoCull
      Direction.Coordinates = {000000000000803F0000000000000000}
      Up.Coordinates = {0000000000000000000080BF00000000}
      Height = 50.000000000000000000
      Width = 50.000000000000000000
    end
    object Mag: TGLDummyCube
      Position.Coordinates = {000000000000A0C0000000000000803F}
      CubeSize = 1.000000000000000000
    end
    object obj: TGLDummyCube
      CubeSize = 1.000000000000000000
      object GLCylinder1: TGLCylinder
        Material.FrontProperties.Diffuse.Color = {3D0A173F85EBD13E52B89E3E0000803F}
        Position.Coordinates = {0000000000008040000000000000803F}
        BottomRadius = 3.000000000000000000
        Height = 4.000000000000000000
        TopRadius = 3.000000000000000000
        BehavioursData = {
          0458434F4C02010201060D54474C4E474444796E616D69630200060C68696768
          2064656E7369747902000201060D474C4E47444D616E61676572310800090500
          000000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F05000000
          00000000A0014009050000000000000000000002000802000802000900000000
          00000000000000000000803F020008}
      end
      object GLCone1: TGLCone
        Position.Coordinates = {000000000000C040000000000000803F}
        BottomRadius = 2.000000000000000000
        Height = 3.000000000000000000
        BehavioursData = {
          0458434F4C02010201060D54474C4E474444796E616D69630200060E6E6F726D
          616C2064656E7369747902000201060D474C4E47444D616E6167657231080009
          0500000000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F0500
          00000000000080FF3F090500000000000000000000020008020008020009E2CD
          0C33000040BF000000000000803F020008}
      end
      object GLCube2: TGLCube
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Position.Coordinates = {0000000000000041000000000000803F}
        BehavioursData = {
          0458434F4C02010201060D54474C4E474444796E616D69630200060B6C6F7720
          64656E7369747902000201060D474C4E47444D616E6167657231080009050000
          0000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F0500000000
          00000080FE3F0905000000000000000000000200080200080200090000000000
          000000000000000000803F020008}
        CubeSize = {000040400000404000004040}
      end
      object SubMarine: TGLCube
        Direction.Coordinates = {F304353FFFFFFF3E0100003F00000000}
        PitchAngle = 45.000000000000000000
        Position.Coordinates = {0000A0400000C040000000000000803F}
        TurnAngle = 45.000000000000000000
        Up.Coordinates = {5C67A332F404353FF20435BF00000000}
        BehavioursData = {
          0458434F4C02010201060D54474C4E474444796E616D69630200060E6E6F726D
          616C2064656E7369747902000201060D474C4E47444D616E6167657231080009
          0500000000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F0500
          00000000000080FF3F0905000000000000000000000200080200080200090000
          000000000000000000000000803F020008}
        CubeSize = {0000803F0000803F0000A040}
      end
      object GLLeadSphere: TGLSphere
        Material.FrontProperties.Diffuse.Color = {3D0A173F85EBD13E52B89E3E0000803F}
        Position.Coordinates = {000080C00000803F000040C00000803F}
        Radius = 2.000000000000000000
        BehavioursData = {
          0458434F4C02010201060D54474C4E474444796E616D69630200060C68696768
          2064656E7369747902000201060D474C4E47444D616E61676572310800090500
          000000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F05000000
          00000000A0024009050000000000000000000002000802000802000900000000
          00000000000000000000803F020008}
      end
      object GLPaperSphere: TGLSphere
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Position.Coordinates = {000080C00000A0C0000000000000803F}
        Radius = 2.000000000000000000
        BehavioursData = {
          0458434F4C02010201060D54474C4E474444796E616D69630200060B6C6F7720
          64656E7369747902000201060D474C4E47444D616E6167657231080009050000
          0000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F0500000000
          00CDCCCCFB3F0905000000000000000000000200080200080200090000000000
          000000000000000000803F020008}
      end
      object GLCapsule1: TGLCapsule
        Height = 5.000000000000000000
        Slices = 4
        Stacks = 4
        Radius = 1.500000000000000000
        BehavioursData = {
          0458434F4C02010201060D54474C4E474444796E616D69630200060E6E6F726D
          616C2064656E7369747902000201060D474C4E47444D616E6167657231080009
          0500000000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F0500
          00000000000080FF3F0905000000000000000000000200080200080200090000
          000000000000000000000000803F020008}
      end
    end
    object GLCube1: TGLCube
      Position.Coordinates = {00000000000020C1000000000000803F}
      BehavioursData = {
        0458434F4C02010201060C54474C4E4744537461746963020006067365616265
        6402000201060D474C4E47444D616E61676572310800090500000000000AD7A3
        F83F1200000000}
      CubeSize = {000048420000803F00004842}
    end
    object HTLiquidDensity: TGLHUDText
      Position.Coordinates = {000070410000AA42000000000000803F}
      BitmapFont = GLWindowsBitmapFont1
      Text = 'Liquid Density'
      Rotation = 0.000000000000000000
      ModulateColor.Color = {0000000000000000000000000000803F}
    end
    object HTLinearViscosity: TGLHUDText
      Position.Coordinates = {0000704100000C43000000000000803F}
      BitmapFont = GLWindowsBitmapFont1
      Text = 'Linear Viscosity'
      Rotation = 0.000000000000000000
      ModulateColor.Color = {0000000000000000000000000000803F}
    end
    object HTAngularViscosity: TGLHUDText
      Position.Coordinates = {0000704100004343000000000000803F}
      BitmapFont = GLWindowsBitmapFont1
      Text = 'Angular Viscosity'
      Rotation = 0.000000000000000000
      ModulateColor.Color = {0000000000000000000000000000803F}
    end
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    OnProgress = GLCadencer1Progress
    Left = 104
    Top = 16
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
    FormCaption = 'Density - %FPS'
    KeyCombinations = <
      item
        ShiftState = [ssLeft, ssRight]
        Action = snaZoom
      end
      item
        ShiftState = [ssRight]
        Action = snaMoveAroundTarget
      end>
    Left = 416
    Top = 16
  end
  object GLNGDManager1: TGLNGDManager
    NewtonSurfaceItem = <>
    NewtonSurfacePair = <>
    NewtonJoint = <>
    Left = 520
    Top = 16
  end
  object GLWindowsBitmapFont1: TGLWindowsBitmapFont
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 412
    Top = 152
  end
end
