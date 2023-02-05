object FormSoundWaveout: TFormSoundWaveout
  Left = 209
  Top = 92
  Caption = 'Sound WaveOut'
  ClientHeight = 424
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object GLSceneViewer: TGLSceneViewer
    Left = 0
    Top = 66
    Width = 596
    Height = 331
    Camera = GLCamera1
    Buffer.BackgroundColor = clBlack
    Buffer.AntiAliasing = aaNone
    FieldOfView = 146.379318237304700000
    PenAsTouch = False
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 550
    ExplicitHeight = 296
  end
  object TrackBar: TTrackBar
    Left = 0
    Top = 397
    Width = 596
    Height = 27
    Align = alBottom
    Max = 180
    Min = -180
    PageSize = 45
    Frequency = 45
    TabOrder = 1
    ThumbLength = 10
    TickMarks = tmBoth
    OnChange = TrackBarChange
    ExplicitTop = 320
    ExplicitWidth = 475
  end
  object TrackBar1: TTrackBar
    Left = 0
    Top = 33
    Width = 596
    Height = 33
    Align = alTop
    Max = 50
    Min = -50
    PageSize = 45
    Frequency = 10
    TabOrder = 2
    ThumbLength = 10
    TickMarks = tmBoth
    OnChange = TrackBar1Change
    ExplicitWidth = 475
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 596
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 475
    DesignSize = (
      596
      33)
    object LabelFPS: TLabel
      Left = 8
      Top = 7
      Width = 20
      Height = 13
      Caption = 'FPS'
    end
    object Button1: TButton
      Left = 505
      Top = 4
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Chimes (WAV)'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 384
    end
    object btnHowl: TButton
      Left = 416
      Top = 2
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Howl (MP3)'
      TabOrder = 1
      OnClick = btnHowlClick
      ExplicitLeft = 295
    end
  end
  object GLSMWaveOut: TGLSMWaveOut
    Active = True
    MaxChannels = 32
    MasterVolume = 1.000000000000000000
    Listener = Mickey
    Sources = <>
    UpdateFrequency = 1.000000000000000000
    Cadencer = GLCadencer1
    Left = 248
    Top = 64
  end
  object GLSoundLibrary: TGLSoundLibrary
    Samples = <>
    Left = 160
    Top = 64
  end
  object GLScene: TGLScene
    Left = 8
    Top = 64
    object DummyCube: TGLDummyCube
      CubeSize = 1.000000000000000000
      object Torus1: TGLTorus
        Material.FrontProperties.Diffuse.Color = {00000000000000000000803F0000803F}
        Material.FrontProperties.Emission.Color = {000000008180803E8180003F0000803F}
        Direction.Coordinates = {000000000000803F2EBD3BB300000000}
        Position.Coordinates = {00000000000000BF000000000000803F}
        Scale.Coordinates = {0000803F0000803F0000003F00000000}
        Up.Coordinates = {000000002EBD3BB3000080BF00000000}
        MajorRadius = 5.000000000000000000
        MinorRadius = 0.100000001490116100
        Rings = 16
        Sides = 3
        StopAngle = 360.000000000000000000
        Parts = [toSides, toStartDisk, toStopDisk]
      end
      object Mickey: TGLSphere
        Position.Coordinates = {000000000000003F000000000000803F}
        Radius = 0.500000000000000000
        Slices = 9
        Stacks = 9
        object Sphere2: TGLSphere
          Position.Coordinates = {CDCCCC3ECDCC4C3E000000000000803F}
          Radius = 0.300000011920929000
          Slices = 6
          Stacks = 6
        end
        object Sphere3: TGLSphere
          Position.Coordinates = {CDCCCCBECDCC4C3E000000000000803F}
          Radius = 0.300000011920929000
          Slices = 6
          Stacks = 6
        end
        object Cone1: TGLCone
          Direction.Coordinates = {2EF964BF2EF9E43E0000000000000000}
          Position.Coordinates = {00000000000000000000003F0000803F}
          Up.Coordinates = {00000000000000000000803F00000000}
          BottomRadius = 0.300000011920929000
          Height = 0.500000000000000000
          Slices = 8
          Stacks = 2
          Parts = [coSides]
        end
      end
      object Plane1: TGLPlane
        Direction.Coordinates = {000000000000803F2EBD3BB300000000}
        Position.Coordinates = {00000000000000BF000000000000803F}
        Up.Coordinates = {000000002EBD3BB3000080BF00000000}
        Height = 10.000000000000000000
        Width = 0.500000000000000000
      end
    end
    object Sphere: TGLSphere
      Material.FrontProperties.Diffuse.Color = {0000803F00000000000000000000803F}
      Material.FrontProperties.Emission.Color = {8180003F00000000000000000000803F}
      Position.Coordinates = {000000400000003F000000000000803F}
      OnProgress = SphereProgress
      Radius = 0.500000000000000000
      Slices = 9
      Stacks = 9
      BehavioursData = {
        0458434F4C02010201061054474C42536F756E64456D69747465720200120000
        00000200020002000200050000000000000080FF3F050000000000000080FF3F
        0500000000000000C805400500000000000000B407400500000000000000B407
        400500000000000000000000060E474C536F756E644C696272617279060C6472
        756D6C6F6F702E7761760808026309}
      object Disk1: TGLDisk
        Direction.Coordinates = {000000000000803F2EBD3BB300000000}
        Position.Coordinates = {00000000000080BF000000000000803F}
        Up.Coordinates = {000000002EBD3BB3000080BF00000000}
        OuterRadius = 0.500000000000000000
        Slices = 12
        SweepAngle = 360.000000000000000000
      end
    end
    object GLLightSource: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000204100002041000020410000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLCamera1: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = Plane1
      Position.Coordinates = {000000400000A040000020410000803F}
      Left = 256
      Top = 160
    end
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene
    SleepLength = 1
    Left = 72
    Top = 64
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 336
    Top = 64
  end
end
