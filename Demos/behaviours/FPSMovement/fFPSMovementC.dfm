object FormFPSMovement: TFormFPSMovement
  Left = 209
  Top = 112
  Caption = 'FPSMovement'
  ClientHeight = 383
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 588
    Height = 383
    Camera = ThirdPersonCamera
    Buffer.BackgroundColor = clBlack
    Buffer.ShadeModel = smSmooth
    FieldOfView = 150.733886718750000000
    PenAsTouch = False
    Align = alClient
    TabOrder = 0
  end
  object GLScene1: TGLScene
    Left = 40
    Top = 24
    object World: TGLDummyCube
      CubeSize = 1.000000000000000000
      object Player: TGLDummyCube
        Position.Coordinates = {0000803FCDCC8C3F0000803F0000803F}
        CubeSize = 1.000000000000000000
        BehavioursData = {
          0458434F4C02010201060F54474C424650534D6F76656D656E74020012000000
          000200020002000F6666263F0909060A4D6F764D616E61676572}
        object PlayerSphere: TGLSphere
          Radius = 0.649999976158142100
        end
        object FirstPersonCamera: TGLCamera
          DepthOfView = 120.000000000000000000
          FocalLength = 50.000000000000000000
          NearPlaneBias = 0.500000000000000000
          Direction.Coordinates = {00000000000000000000803F00000000}
          Up.Coordinates = {00000000FFFF7F3F0000008000000000}
        end
        object ThirdPersonCamera: TGLCamera
          DepthOfView = 12000.000000000000000000
          FocalLength = 50.000000000000000000
          TargetObject = Player
          Position.Coordinates = {000000000000803F000000C00000803F}
        end
        object GLLightSource1: TGLLightSource
          ConstAttenuation = 1.000000000000000000
          Diffuse.Color = {3333733F3333733F3333733F0000803F}
          SpotCutOff = 180.000000000000000000
        end
        object PlayerCentre: TGLSphere
          Radius = 0.050000000745058060
        end
      end
      object Bot: TGLDummyCube
        CubeSize = 1.000000000000000000
        BehavioursData = {
          0458434F4C02010201060F54474C424650534D6F76656D656E74020012000000
          000200020002000FCDCCCC3E0909060A4D6F764D616E61676572}
        object BotCenter: TGLSphere
          Radius = 0.050000000745058060
        end
        object BotSphere: TGLSphere
          Material.MaterialOptions = [moNoLighting]
          Material.FaceCulling = fcNoCull
          Radius = 0.400000005960464500
        end
      end
      object GLLight: TGLLightSource
        ConstAttenuation = 1.000000000000000000
        Diffuse.Color = {3333733F3333733F3333733F0000803F}
        SpotCutOff = 180.000000000000000000
      end
      object Map1: TGLFreeForm
        VisibilityCulling = vcNone
        Direction.Coordinates = {F7FF7FA7FFFF7FBFE1CD0C3400000000}
        ShowAxes = True
        Up.Coordinates = {00000000E2CD0C340000803F00000000}
        MaterialLibrary = GLMaterialLibrary1
        LightmapLibrary = GLMaterialLibrary1
      end
      object Map2: TGLFreeForm
        Direction.Coordinates = {000000000000803F0000000000000000}
        Position.Coordinates = {00000000000000C0000000000000803F}
        Up.Coordinates = {00000000000000000000803F00000000}
      end
    end
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    MaxDeltaTime = 0.020000000000000000
    OnProgress = GLCadencer1Progress
    Left = 128
    Top = 88
  end
  object GLMaterialLibrary1: TGLMaterialLibrary
    Materials = <
      item
        Name = 'LibMaterial'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {0000803F0000803F0000803F0000803F}
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.FrontProperties.Emission.Color = {0000803F0000803F0000803F0000803F}
        Material.FrontProperties.Shininess = 100
        Material.FrontProperties.Specular.Color = {0000803F0000803F0000803F0000803F}
        Material.BlendingMode = bmAdditive
        Material.Texture.Image.Picture.Data = {
          07544269746D6170360C0000424D360C00000000000036000000280000002000
          0000200000000100180000000000000C0000C30E0000C30E0000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000301000703000A05000D06000F07001007000F07000D06000A05000703
          0003010000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000050200
          0C0500130800190B001E0D00220F00251000261100251000220F001E0D00190B
          001308000C050005020000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000301000B0500150900
          1E0D002712003015003618003C1B003F1C00401D003F1C003C1B003618003015
          002712001E0D001509000B050002010000000000000000000000000000000000
          00000000000000000000000000000000000000000502001007001C0C00281200
          341700401D004A21005225005827005C29005D2A005C29005827005225004A21
          00401D003417002812001C0C0010070004020000000000000000000000000000
          0000000000000000000000000000000000060300130800210F003015003F1C00
          4D23005A2800662E006F32007635007A37007C37007A37007635006F3200662E
          005A28004D23003F1C00301500210F0013080005020000000000000000000000
          0000000000000000000000000000050200130800220F00331700451F00572700
          672E00763500813A00863C008A3D008C3E008C3F008C3E008A3D00863C00813A
          00763500672E00572700451F00331700220F0013080004010000000000000000
          0000000000000000000000030100100700210F003317004720005C29006F3200
          803900883D008F40009442009844009A45009B45009A45009844009442008F40
          00883D008039006F32005C2900472000331700210F0010070002010000000000
          00000000000000000000000B05001C0C00301500451F005C2900723300833B00
          8C3F009542009C4600A14800A64A00A84B00A94C00A84B00A64A00A148009C46
          009542008C3F00833B007233005C2900451F003015001C0C000A050000000000
          00000000000000000502001509002812003F1C005727006F3200833B008E3F00
          984400A14800A84B00AE4E00B35000B65100B75200B65100B35000AE4E00A84B
          00A148009844008E3F00833B006F32005727003F1C0028120015090003010000
          00000000000000000C05001E0D003417004D2300672E008039008C3F00984400
          A24900AC4D00B45000BB5400C05600C35700C45800C35700C05600BB5400B450
          00AC4D00A249009844008C3F00803900672E004D23003417001E0D000B040000
          0000000000030100130800271200401D005A2800763500883D00954200A14800
          AC4D00B65100BF5500C65900CC5B00CF5D00D15D00CF5D00CC5B00C65900BF55
          00B65100AC4D00A14800954200883D007635005A2800401D0027120013080001
          0000000000070300190B003015004A2100662E00813A008F40009C4600A84B00
          B45000BF5500C85A00D15D00D76000DB6200DC6200DB6200D76000D15D00C85A
          00BF5500B45000A84B009C46008F4000813A00662E004A2100301500190B0004
          02000000000A05001E0D003618005225006F3200863C00944200A14800AE4E00
          BB5400C65900D15D00D96100E16400E56600E76700E56600E16400D96100D15D
          00C65900BB5400AE4E00A14800944200863C006F32005225003618001E0D0008
          04000000000D0600220F003C1B005827007635008A3D00984400A64A00B35000
          C05600CC5B00D76000E16400E96800EE6A00F06B00EE6A00E96800E16400D760
          00CC5B00C05600B35000A64A009844008A3D007635005827003C1B00220F000B
          05000000000F07002510003F1C005C29007A37008C3E009A4500A84B00B65100
          C35700CF5D00DB6200E56600EE6A00F56E00F86F00F56E00EE6A00E56600DB62
          00CF5D00C35700B65100A84B009A45008C3E007A37005C29003F1C002510000F
          0700000000100700261100401D005D2A007C37008C3F009B4500A94C00B75200
          C45800D15D00DC6200E76700F06B00F86F00FF7200F86F00F06B00E76700DC62
          00D15D00C45800B75200A94C009B45008C3F007C37005D2A00401D0026110010
          07000000000F07002510003F1C005C29007A37008C3E009A4500A84B00B65100
          C35700CF5D00DB6200E56600EE6A00F56E00F86F00F56E00EE6A00E56600DB62
          00CF5D00C35700B65100A84B009A45008C3E007A37005C29003F1C002510000D
          06000000000D0600220F003C1B005827007635008A3D00984400A64A00B35000
          C05600CC5B00D76000E16400E96800EE6A00F06B00EE6A00E96800E16400D760
          00CC5B00C05600B35000A64A009844008A3D007635005827003C1B00220F000A
          05000000000A05001E0D003618005225006F3200863C00944200A14800AE4E00
          BB5400C65900D15D00D96100E16400E56600E76700E56600E16400D96100D15D
          00C65900BB5400AE4E00A14800944200863C006F32005225003618001E0D0006
          0300000000070300190B003015004A2100662E00813A008F40009C4600A84B00
          B45000BF5500C85A00D15D00D76000DB6200DC6200DB6200D76000D15D00C85A
          00BF5500B45000A84B009C46008F4000813A00662E004A2100301500190B0003
          0100000000030100130800271200401D005A2800763500883D00954200A14800
          AC4D00B65100BF5500C65900CC5B00CF5D00D15D00CF5D00CC5B00C65900BF55
          00B65100AC4D00A14800954200883D007635005A2800401D0027120011070000
          00000000000000000C05001E0D003417004D2300672E008039008C3F00984400
          A24900AC4D00B45000BB5400C05600C35700C45800C35700C05600BB5400B450
          00AC4D00A249009844008C3F00803900672E004D23003417001E0D0007030000
          00000000000000000502001509002812003F1C005727006F3200833B008E3F00
          984400A14800A84B00AE4E00B35000B65100B75200B65100B35000AE4E00A84B
          00A148009844008E3F00833B006F32005727003F1C0028120013080001010000
          00000000000000000000000B05001C0C00301500451F005C2900723300833B00
          8C3F009542009C4600A14800A64A00A84B00A94C00A84B00A64A00A148009C46
          009542008C3F00833B007233005C2900451F003015001C0C0006030000000000
          0000000000000000000000020100100700210F003317004720005C29006F3200
          803900883D008F40009442009844009A45009B45009A45009844009442008F40
          00883D008039006F32005C2900472000331700210F000B050000000000000000
          0000000000000000000000000000040200130800220F00331700451F00572700
          672E00763500813A00863C008A3D008C3E008C3F008C3E008A3D00863C00813A
          00763500672E00572700451F00331700220F000F060001010000000000000000
          0000000000000000000000000000000000050200130800210F003015003F1C00
          4D23005A2800662E006F32007635007A37007C37007A37007635006F3200662E
          005A28004D23003F1C00301500210F000F060002010000000000000000000000
          00000000000000000000000000000000000000000401001007001C0C00281200
          341700401D004A21005225005827005C29005D2A005C29005827005225004A21
          00401D003417002812001C0C000B050001010000000000000000000000000000
          00000000000000000000000000000000000000000000000201000A0500150900
          1E0D002712003015003618003C1B003F1C00401D003F1C003C1B003618003015
          002712001E0D0013080006030000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030100
          0B0400130800190B001E0D00220F00251000261100251000220F001E0D00190B
          0011070007030001010000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000100000402000804000B05000F07001007000D06000A05000603000301
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
        Material.Texture.ImageAlpha = tiaSuperBlackTransparent
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
      end>
    Left = 40
    Top = 88
  end
  object Navigator1: TGLNavigator
    VirtualUp.Coordinates = {000000000000803F000000000000803F}
    UseVirtualUp = True
    AutoUpdateObject = True
    Left = 40
    Top = 152
  end
  object MovManager: TGLFPSMovementManager
    Navigator = Navigator1
    Scene = GLScene1
    DisplayTime = 2000
    MovementScale = 4.000000000000000000
    Left = 128
    Top = 24
    MapsData = {
      0458434F4C02010202061454474C4D6170436F6C6C656374696F6E4974656D02
      00060E4650534D6F76656D656E744D61700200020006044D6170310200020006
      0E4650534D6F76656D656E744D61700200020006044D617032}
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
    FormCaption = 'FPSMovement - %FPS'
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
    Left = 128
    Top = 152
  end
end
