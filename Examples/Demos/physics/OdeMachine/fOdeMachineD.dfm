object FormOdeMachine: TFormOdeMachine
  Left = 83
  Top = 84
  Caption = 'Ode Machine'
  ClientHeight = 430
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 596
    Height = 430
    Camera = GLCamera1
    FieldOfView = 153.816207885742200000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    OnMouseMove = GLSceneViewer1MouseMove
    TabOrder = 0
  end
  object GLScene1: TGLScene
    Left = 32
    Top = 8
    object GLDummyCube1: TGLDummyCube
      Position.Coordinates = {0000803F00000000000000000000803F}
      CubeSize = 1.000000000000000000
      object GLCamera1: TGLCamera
        DepthOfView = 100.000000000000000000
        FocalLength = 50.000000000000000000
        TargetObject = GLDummyCube1
        Position.Coordinates = {00000040000060400000C0400000803F}
        object GLLightSource1: TGLLightSource
          ConstAttenuation = 1.000000000000000000
          SpotCutOff = 180.000000000000000000
        end
      end
    end
    object Machine: TGLDummyCube
      CubeSize = 1.000000000000000000
      object Wheel: TGLCylinder
        Material.FrontProperties.Diffuse.Color = {938C0C3E938C0C3E938E0E3F0000803F}
        Position.Coordinates = {000020C000000000000000000000803F}
        BottomRadius = 2.000000000000000000
        Height = 0.500000000000000000
        Slices = 32
        TopRadius = 2.000000000000000000
        BehavioursData = {
          0458434F4C02010201060D54474C4F444544796E616D69630200060B4F444520
          44796E616D696302000200060D474C4F44454D616E6167657231020005000000
          000000008000400802000500000000000000FA08400500000000000000000000
          0500000000000000000000050000000000000000000005000000000000000000
          0005000000000000000000000500000000000000000000050000000000000000
          00000500000000000000000000050000000000000000000002010458434F4C02
          010203061554474C4F4445456C656D656E7443796C696E646572020006084379
          6C696E6465720200020009000020C000000000000000000000803F0200080200
          08050000000000000080FF3F0200050000000000000080004005000000000000
          0080FE3F02000200060843796C696E6465720200020009000020C0000000C000
          0000000000803F020008020008050000000000000080FF3F0200050000000000
          000080FE3F0500000000000000A0014002000200060843796C696E6465720200
          020009000020C00000003F0000C0BF0000803F02000802000805000000000000
          0080FF3F0200050000000000000080FD3F050000000000000080FF3F09}
        object Axle: TGLCylinder
          Material.FrontProperties.Diffuse.Color = {938C0C3EDCD6D63E938E0E3F0000803F}
          Position.Coordinates = {00000000000000C0000000000000803F}
          BottomRadius = 0.500000000000000000
          Height = 5.000000000000000000
          TopRadius = 0.500000000000000000
        end
        object Pin1: TGLCylinder
          Material.FrontProperties.Diffuse.Color = {938C0C3EDCD6D63E938E0E3F0000803F}
          Position.Coordinates = {000000000000003F0000C0BF0000803F}
          BottomRadius = 0.250000000000000000
          Height = 1.000000000000000000
          TopRadius = 0.250000000000000000
        end
      end
      object Arm: TGLCube
        Material.FrontProperties.Diffuse.Color = {CDCC0C3FEC51B83DEC51B83D0000803F}
        Direction.Coordinates = {4B413AB4000000000000803F00000000}
        Position.Coordinates = {0000003F0000403F0000C0BF0000803F}
        BehavioursData = {
          0458434F4C02010201060D54474C4F444544796E616D69630200060B4F444520
          44796E616D696302000200060D474C4F44454D616E6167657231020005000000
          00006F1283F53F080E000500000000000000FA08400500000000000000000000
          0500000000000000000000050000000000000000000005000000000000000000
          0005000000000000000000000500000000000000000000050000000000000000
          00000500000000000000000000050000000000000000000002010458434F4C02
          010201061054474C4F4445456C656D656E74426F7802000603426F7802000200
          093333333F0000803F333333BF0000803F020008020008050000000000000080
          FF3F02000500000000009A99D90140050000000000CDCCCCFC3F050000000000
          3333B3FE3F09}
        CubeSize = {0000F0400000803E0000403F}
      end
      object Pin2: TGLCylinder
        Material.FrontProperties.Diffuse.Color = {938C0C3EDCD6D63E938E0E3F0000803F}
        Position.Coordinates = {000060400000003F0000C0BF0000803F}
        BottomRadius = 0.250000000000000000
        Height = 1.000000000000000000
        TopRadius = 0.250000000000000000
        BehavioursData = {
          0458434F4C02010201060D54474C4F444544796E616D69630200060B4F444520
          44796E616D696302000200060D474C4F44454D616E6167657231020005000000
          00006F1283F53F0812000500000000000000FA08400500000000000000000000
          0500000000000000000000050000000000000000000005000000000000000000
          0005000000000000000000000500000000000000000000050000000000000000
          00000500000000000000000000050000000000000000000002010458434F4C02
          01020009}
      end
      object Slider: TGLCube
        Material.FrontProperties.Diffuse.Color = {1F856B3F14AE473F52B81E3F0000803F}
        Position.Coordinates = {00005040000000000000C0BF0000803F}
        CubeSize = {000080400000003F0000803F}
      end
    end
    object ODERenderPoint: TGLRenderPoint
    end
    object GLHUDText1: TGLHUDText
      Position.Coordinates = {0000204100002041000000000000803F}
      BitmapFont = GLWindowsBitmapFont1
      Rotation = 0.000000000000000000
      ModulateColor.Color = {0000000000000000000000000000803F}
    end
  end
  object GLODEManager1: TGLODEManager
    Solver = osmQuickStep
    Iterations = 3
    MaxContacts = 8
    RenderPoint = ODERenderPoint
    Visible = True
    VisibleAtRunTime = False
    Left = 120
    Top = 8
  end
  object GLODEJointList1: TGLODEJointList
    Left = 224
    Top = 8
    ODEJointsData = {
      0458434F4C02010204061054474C4F44454A6F696E7448696E67650200060A44
      72697665576865656C0200060D474C4F44454D616E6167657231060557686565
      6C1200000000090200020009000020C000000000000000000000803F02000900
      0000000000803F00000000000000000200050000000000000000000005000000
      000000000000000500000000000000A001400500000000000000A00140050000
      0000000000000000050000000000000000000005000000000000000000000500
      0000000000000000000500000000000000000000050000000000000000000005
      0000000000000000000002000200060C50696E3141726D48696E67650200060D
      474C4F44454D616E61676572310605576865656C060341726D09020002000900
      0020C00000003F0000C0BF0000803F020009000000000000803F000000000000
      0000020005000000000000000000000500000000000000000000050000000000
      0000000000050000000000000000000005000000000000000000000500000000
      0000000000000500000000000000000000050000000000000000000005000000
      0000000000000005000000000000000000000500000000000000000000061154
      474C4F44454A6F696E7448696E6765320200060C41726D50696E3248696E6765
      0200060D474C4F44454D616E6167657231060341726D060450696E3209020002
      0009000060400000003F0000C0BF0000803F020009000000000000803F000000
      0000000000020008020005000000000000000000000500000000000000000000
      0500000000000000000000050000000000000000000005000000000000000000
      0005000000000000000000000500000000000000000000050000000000000000
      0000050000000000000000000005000000000000000000000500000000000000
      0000000200050000000000000000000005000000000000000000000500000000
      0000000000000500000000000000000000050000000000000000000005000000
      0000000000000005000000000000000000000500000000000000000000050000
      0000000000000000050000000000000000000005000000000000000000000611
      54474C4F44454A6F696E74536C696465720200060A50696E32536C6964657202
      00060D474C4F44454D616E6167657231060450696E3212000000000902000200
      090000803F000000000000000000000000020005000000000000000000000500
      0000000000000000000500000000000000000000050000000000000000000005
      0000000000000000000005000000000000000000000500000000000000000000
      0500000000000000000000050000000000000000000005000000000000000000
      000500000000000000000000}
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    MaxDeltaTime = 0.020000000000000000
    OnProgress = GLCadencer1Progress
    Left = 32
    Top = 72
  end
  object GLWindowsBitmapFont1: TGLWindowsBitmapFont
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Left = 352
    Top = 8
  end
end
