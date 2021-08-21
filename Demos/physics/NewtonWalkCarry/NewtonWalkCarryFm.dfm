object FormNewtonWalkCarry: TFormNewtonWalkCarry
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormNewtonWalkCarry'
  ClientHeight = 323
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 249
    Height = 201
    Camera = Player_Cam
    VSync = vsmSync
    FieldOfView = 90.285766601562500000
    PenAsTouch = False
    OnMouseMove = GLSceneViewer1MouseMove
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 207
    Width = 441
    Height = 98
    Lines.Strings = (
      
        '[Model]=PX_0PY_-5PZ_0RX_0RY_0RZ_0DX_0DY_1DZ_0[Name]=ngdmap1.3ds[' +
        'Dynamic]=0:DM=Roads001.jpgNM=Roads001_NRM.jpgLM=Roads001_DISP.jp' +
        'g;'
      
        '[Model]=PX_10PY_0PZ_0RX_0RY_0RZ_0DX_0DY_1DZ_0[Name]=ngdchair.3ds' +
        '[Dynamic]=1:DM=Roads005.jpgNM=Roads005_NRM.jpgLM=Roads005_DISP.j' +
        'pg;'
      '[Player]=PX_0PY_0PZ_0')
    ScrollBars = ssBoth
    TabOrder = 1
    Visible = False
  end
  object GLScene1: TGLScene
    Left = 40
    Top = 8
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.100000023841858000
      Diffuse.Color = {F1F0703FF1F0703F0000803F0000803F}
      Position.Coordinates = {0000000000002042000000000000803F}
      SpotCutOff = 180.000000000000000000
      SpotDirection.Coordinates = {000000000000803F0000000000000000}
    end
    object Game_Menu: TGLDummyCube
      CubeSize = 1.000000000000000000
    end
    object Player_Capsule: TGLCapsule
      Material.PolygonMode = pmPoints
      Direction.Coordinates = {000000000000803F0000000000000000}
      Up.Coordinates = {00000000000000000000803F00000000}
      Visible = False
      Pickable = False
      Height = 3.000000000000000000
      Slices = 4
      Stacks = 4
      Radius = 0.500000000000000000
      BehavioursData = {
        0458434F4C02010201060C54474C4E47445374617469630200060A4E47442053
        746174696302000201060D474C4E47444D616E61676572310800090500000000
        000AD7A3F83F1200000000}
    end
    object Player_Cube: TGLDummyCube
      CubeSize = 1.000000000000000000
      BehavioursData = {
        0458434F4C02010201060D54474C4E474444796E616D69630200060B4E474420
        44796E616D696302000201060D474C4E47444D616E6167657231080009050000
        0000000AD7A3F83F1200000000020109050000000000CDCCCCFB3F0500000000
        00000080FF3F0905000000000000000000000200080200080200090000000000
        000000000000000000803F020008}
      object GLCube3: TGLCube
        Direction.Coordinates = {000000000000803F0000000000000000}
        Position.Coordinates = {00000000CDCCCCBF000000000000803F}
        Up.Coordinates = {0000000000000000000080BF00000000}
        BehavioursData = {
          0458434F4C02010201060C54474C4E47445374617469630200060A4E47442053
          746174696302000201060D474C4E47444D616E61676572310800090500000000
          000AD7A3F83F1200000000}
        CubeSize = {0000003F0000003F0000803F}
      end
      object Cam_Cube: TGLDummyCube
        Direction.Coordinates = {00000000000080BF0000000000000000}
        Position.Coordinates = {000000006666E63F000000000000803F}
        Up.Coordinates = {0000000000000000000080BF00000000}
        CubeSize = 1.000000000000000000
        object Player_Cam: TGLCamera
          DepthOfView = 1000.000000000000000000
          FocalLength = 100.000000000000000000
          NearPlaneBias = 0.009999999776482582
          CameraStyle = csInfinitePerspective
          Direction.Coordinates = {000000000000803F0000000000000000}
          Up.Coordinates = {0000000000000000000080BF00000000}
        end
      end
    end
    object Scene_Objects: TGLDummyCube
      CubeSize = 1.000000000000000000
      object GLCube2: TGLCube
        Tag = 1
        Direction.Coordinates = {000000000000803F0000000000000000}
        Position.Coordinates = {0000000000000000000020410000803F}
        Up.Coordinates = {0000000000000000000080BF00000000}
        BehavioursData = {
          0458434F4C02010201060C54474C4E47445374617469630200060A4E47442053
          746174696302000201060D474C4E47444D616E61676572310800090500000000
          000AD7A3F83F1200000000}
      end
      object GLSphere1: TGLSphere
        Tag = 1
        Radius = 0.500000000000000000
        Slices = 32
        Stacks = 32
        BehavioursData = {
          0458434F4C02010201060C54474C4E47445374617469630200060A4E47442053
          746174696302000201060D474C4E47444D616E61676572310800090500000000
          000AD7A3F83F1200000000}
      end
    end
    object GLHUDSprite1: TGLHUDSprite
      Material.BlendingMode = bmTransparency
      Material.Texture.Image.Picture.Data = {
        0A544A504547496D616765A80C0000FFD8FFE000104A46494600010100000100
        010000FFDB004300010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101FFDB00430101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        01010101010101010101010101FFC00011080030003003012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FEFE
        28A2BE00F8E5F1CBE167ED5DF0B3F6CBFD8EBF63AFDB2FF67FFF0086DAFF0086
        7FFDA23C01A1685E00FDA23C39FF000B4FE017C53FF847357F85BA678D7C6BA6
        7C2DD5FC47F16BE167FC2ACF8B5E23F0C59F88FC4767E18FF848FC0FE23FB1DB
        DBD97FC24BFD9FA7CE01F9C1FB5EFF00C143BF69FF00DADFF6B8BDFF00825DFF
        00C11CBC55E1FD07E2B7C29F10683A97FC1407FE0A13ACF83BC3FF0013FE0D7E
        C33E15B3D6E5FB4FC24F09F873C4B69A97827E2F7ED3FE31B9D0F58F0C5CF80A
        FE3BCD3BC3D3D8789BC1064D27C53A0FC64F897FB281FB21FF00C143BF69FF00
        D923F6B8B2FF00825DFF00C1637C55E1FD7BE2B7C56F106BDA97FC13FBFE0A13
        A3783BC3FF000C3E0D7EDCDE15BCD6E2FB37C24F167873C3569A6F827E10FED3
        FE0EB9D7347F0C5B780AC23B3D3BC433DFF867C1024D5BC53AF7C1BF897FB57F
        E707ECF3A67FC159BFE082FE04FF0082717ECBFE26F85BFF000480B4FD94BF68
        8FDBFF00F667FD8F7C6DACFECF7A7FED8BE26FDA3BC69E3BFDA23589ADBC73F1
        C7C79E26F893AEF813C25AC7C40D63C25E04D651BC4B7363A968FE1ABAB4F027
        82FC27F0E34DF85BE19D0FC27E1A3F686D33FE0ACDFF0005E8F027FC1477F65F
        F0CFC2DFF82405DFECA5FB3BFEDFFF00B4C7EC7BE09D67F684D3FF006C5F0CFE
        D1DE0BF1DFECEFAC436DE06F8E3E03F137C36D77C77E12D1FE2068FE12F1DE8C
        8BE25B6B1D3747F12DD5DF8EFC17E2CF871A97C2DF136B9E13F12807F67B457C
        01F037E397C2CFD947E167EC69FB1D7ED8BFB65FECFF00FF000DB5FF000CFF00
        FB3BF8035DD0BC7FFB447873FE169FC7DF8A7FF08E691F0B753F1AF82B4CF8A5
        ABF873E2D7C53FF85A7F16BC39E27B3F0E788EF3C31FF091F8E3C47F6DB7B8B2
        FF008497FB434F83EFFA00FE787FE0A1DFB5E7ED71FB5BFED3FE2AFF0082397F
        C12EEF7C41F0A7E2B683E1FF00076B3FF0509FF8280EA5A0EB767E15FD867E0D
        7C4FF0FDA7897C39E13F84973E6E8773E31FDA7FE2F7827528EFFC0573E18D62
        C27F0F69D7921F04789B41F14E93F12FE327ECA1F9C1A67ECF3E04FF00820BFF
        00C159BE16F89BF65FFF0082717EDFFF00B447ECA569FF000480D3FF0067BD67
        C6DFB1EFECCFAC7ED11E3BF1A7ED1DE26FDB175DF893E26F1E7C71F1CDB4DE04
        F096B1F10358F097812C6E7C4AC9ACDA5D786B47D4BE1C784FC17E04F0CFC2DD
        37C27A1F86BF47FF00E0A1DFB21FED71FB247ED3FE2AFF0082C6FF00C12EECBC
        41F15BE2B6BDE1FF000768DFF0509FF827F6A5AF6B779E15FDB9BE0D7C30F0FD
        A786BC39E2CF8496DE56B973E0EFDA7FE10F8274D8EC3C056DE18D1EFE7F10E9
        D6720F0478675EF14EADF12FE0DFED5FF9C1A67ED0DE04FF0082F47FC159BE16
        F867F65FFF00828EFEDFFF00B3BFECA577FF000480D3FF00684D67C13FB1EFED
        31AC7ECEFE3BF05FED1DE19FDB175DF86DE26F01FC71F035B43E3BF0968FF103
        47F0978EEC6DBC4AA9A35DDD789747D37E1C78B3C17E3BF137C2DD4BC27AE789
        403D03F6E0FDB83E29FF00C14A3E29FF00C12AFE16FC2DFF008255FF00C15FFE
        0BFF00C297FF0082BFFEC39FB4BFC45F88BFB4BFEC39E23F873F0B3C35F0B3E1
        CF88FC5BE1DF176ADAB78BBC3BE2DF1DFF0063FF0063FF00C277A7EBB7F7FAEE
        9FA578734FF0E695AF6A7A9EBD63F61820BC3F61FF00DB83E29FFC135FE29FFC
        1553E16FC52FF8255FFC15FF00E347FC2E8FF82BFF00EDC7FB4BFC3AF88BFB34
        7EC39E23F88DF0B3C4BF0B3E23788FC25E1DF08EADA4F8BBC45E2DF027F6C7F6
        C7FC209A86BB617FA169FAAF87350F0E6ABA0EA7A66BD7DF6E9E0B33F6E0FD87
        FE29FF00C135FE29FF00C12AFE297C2DFF0082AA7FC15FFE347FC2E8FF0082BF
        FEC39FB347C45F875FB4BFEDC7E23F88DF0B3C4BF0B3E23788FC5BE22F17693A
        B7847C3BE12F027F6C7F6C7FC209A7E857F61AEEA1AAF87350F0E6ABAF699A9E
        837DF6E827B33F61FF00D87FE29FFC14A3E29FFC1553E297C52FF82AA7FC15FF
        00E0BFFC297FF82BFF00EDC7FB347C3AF875FB347EDC7E23F873F0B3C35F0B3E
        1CF88FC25E22F08E93A4F847C45E12F1DFF63FF63FFC277A86856161A16A1A57
        8734FF000E695A0E99A668363F619E7BC00F3FD4FF00679F027FC17A3FE0ACDF
        14BC4DFB507FC138BF6FFF00D9DFF652BBFF0082406A1FB3DE8DE36FDB0BF667
        D63F677F1DF82FF68EF0CFED8BA17C49F0CF8F3E0778E6E66F1DF84B47F881A3
        F84BC777D73E1A67D66EEEBC4BA3E9BF11FC27E34F02789BE16EA5E2CD0FC4BF
        A3FF00F04F1FDAF3F6B8FD923F69FF000AFF00C11CBFE0A897BE20F8ADF15B5E
        F0FF008C759FF827B7FC14074DD075BBCF0AFEDCDF06BE18787EEFC4BE23F09F
        C5BB9F375CB9F077ED3FF087C13A6C97FE3DB9F13EB17F3F8874EB38CF8DFC4D
        AF78A756F869F193F6AFFCE0D4FF00686F027FC105FF00E0ACDF14BC33FB507F
        C1477F6FFF00DA23F652B4FF0082406A1FB4268DE09FDB0BF698D63F688F1DF8
        D3F68EF137ED8BA17C36F0CF80FE07781AE61F02784B58F881AC784BC097D6DE
        1A57D1AD2EBC35A3EA5F11FC59E34F1DF867E16E9BE2CD73C35FA3FF00F04F1F
        D90FF6B8FDADFF0069FF000AFF00C1637FE0A8965E20F853F15B41F0FF008C74
        6FF827B7FC13FB4DD7B5BB3F0AFEC33F06BE27F87EEFC35E23F167C5BB6F2B43
        B9F18FED3FF17BC13A94961E3DB6F13E8F613F87B4EBC8C78DFC33A0F8A749F8
        69F06FF65000FE87ABE00F8E5F037E167ECA3F0B3F6CBFDB17F63AFD8D3F67FF
        00F86DAFF867FF00DA23C7FA16BBE00FD9DFC39FF0B4FE3EFC53FF00847357F8
        A5A6782BC6BA9FC2DD23C39F16BE29FF00C2D3F8B5E1CF0C5E788FC3967E27FF
        00848FC71E23FB1DC5BDEFFC24BFD9FA841F7FD1401FC617ECF3A9FF00C159BF
        E0BD1E04FF0082717ED41E26F8A5FF000480BBFD94BF677FDBFF00F667FDB0BC
        6DA37ECF7A87ED8BE19FDA3BC17E3BFD9DF589AE7C73F03BC79E19F893A178EF
        C25A3FC40D1FC25E3BD65DBC35737DA6E8FE25BABBF0278D3C27F11F52F85BE2
        6D0FC59E253F686D4FFE0ACDFF000417F027FC1477F6A0F0CFC52FF82405A7EC
        A5FB447EDFFF00B4C7ED85E09D1BF684D43F6C5F137ED1DE34F1DFED11AC4373
        E06F81DE03F0CFC36D0BC09E12D63E206B1E12F0268CEBE1AB6BED4B47F0D5D5
        A78EFC69E2CF88FA6FC2DF0CEB9E2CF0D7E8FF00ED7BFF0004F1FDA7FF00648F
        DAE2F7FE0A89FF000472F0AF87F5EF8ADF15BC41A0E9BFF0501FF827B6B3E31F
        0FFC30F835FB737856F35B97ED3F16FC27E23F12DDE9BE09F843FB4FF83AE75C
        D63C4F73E3DBF92CF4EF10CF7FE26F1B98F56F14EBDF193E1A7ED5E7EC87FF00
        04F1FDA7FF006B7FDAE2CBFE0A89FF00058DF0AF87F41F8ADF0A7C41AF69BFF0
        4FEFF827B68DE31F0FFC4FF835FB0CF856CF5B8BECDF16FC59E23F0D5DEA5E09
        F8BDFB4FF8C6E743D1FC4F6DE3DB092F34EF0F4F61E19F1B88F49F14E83F06FE
        1A7ECA001FA3FF00037E06FC2CFDABBE167EC69FB62FED8BFB1A7ECFFF00F0DB
        5FF0CFFF00B3BF8FF5DD77C7FF00B3BF873FE169FC02F8A7FF0008E691F14B53
        F05782B53F8A5A4788FE2D7C2CFF008559F16BC47E27BCF0E7872F3C4FFF0009
        1F81FC47F6DB8B8BDFF8497FB43509FEFF00A28A00FFD9}
      Material.Texture.ImageAlpha = tiaTopLeftPointColorTransparent
      Material.Texture.TextureMode = tmReplace
      Material.Texture.Disabled = False
      Pickable = False
      Width = 48.000000000000000000
      Height = 48.000000000000000000
      Rotation = 0.000000000000000000
    end
    object GLHUDText1: TGLHUDText
      Position.Coordinates = {0000484200004842000000000000803F}
      Pickable = False
      BitmapFont = GLWindowsBitmapFont1
      Rotation = 0.000000000000000000
      ModulateColor.Color = {0000803F00000000000000000000803F}
    end
    object GLLines1: TGLLines
      Pickable = False
      Nodes = <>
      NodesAspect = lnaInvisible
      SplineMode = lsmSegments
      Options = [loUseNodeColorForLines]
    end
  end
  object GLNGDManager1: TGLNGDManager
    VisibleAtRunTime = True
    Gravity.Coordinates = {00000000CDCC1CC10000000000000000}
    WorldSizeMin.Coordinates = {00401CC600401CC600401CC600000000}
    WorldSizeMax.Coordinates = {00401C4600401C4600401C4600000000}
    NewtonSurfaceItem = <>
    NewtonSurfacePair = <>
    DebugOption.NGDManagerDebugs = [mdShowAABB, mdShowContact, mdShowJoint]
    Line = GLLines1
    NewtonJoint = <
      item
        JointType = nj_UpVector
        ParentObject = Player_Capsule
        ChildObject = Player_Capsule
      end
      item
        KinematicControllerOptions.PickModeLinear = True
        KinematicControllerOptions.LinearFriction = 350.000000000000000000
        KinematicControllerOptions.AngularFriction = 3000.000000000000000000
        JointType = nj_KinematicController
      end>
    Left = 152
    Top = 80
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    FixedDeltaTime = 0.010000000000000000
    OnProgress = GLCadencer1Progress
    Left = 40
    Top = 80
  end
  object GLMaterialLibrary1: TGLMaterialLibrary
    Left = 152
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 320
    Top = 152
  end
  object GLWindowsBitmapFont1: TGLWindowsBitmapFont
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Ranges = <
      item
        StartASCII = ' '
        StopASCII = #128
        StartGlyphIdx = 0
      end
      item
        StartASCII = #192
        StopASCII = #255
        StartGlyphIdx = 97
      end>
    Left = 40
    Top = 144
  end
  object GLNavigator1: TGLNavigator
    MovingObject = Player_Cube
    AutoUpdateObject = True
    Left = 288
    Top = 8
  end
  object GLUserInterface1: TGLUserInterface
    MouseSpeed = 40.000000000000000000
    GLNavigator = GLNavigator1
    GLVertNavigator = GLNavigator2
    Left = 152
    Top = 144
  end
  object GLNavigator2: TGLNavigator
    VirtualUp.Coordinates = {000000000000803F0000000000000000}
    MovingObject = Cam_Cube
    AutoUpdateObject = True
    MaxAngle = 90.000000000000000000
    MinAngle = -90.000000000000000000
    AngleLock = True
    Left = 384
    Top = 8
  end
  object TIPickTimer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TIPickTimerTimer
    Left = 256
    Top = 104
  end
  object Jump_Timer: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Jump_TimerTimer
    Left = 320
    Top = 104
  end
  object Timer_OnVelocity: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer_OnVelocityTimer
    Left = 384
    Top = 104
  end
  object On_Drop: TTimer
    Enabled = False
    Interval = 200
    OnTimer = On_DropTimer
    Left = 256
    Top = 152
  end
end
