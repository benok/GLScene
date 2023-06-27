object FormTriangleBox: TFormTriangleBox
  Left = 281
  Top = 112
  Caption = 'Triangle and Box Intersection'
  ClientHeight = 549
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnMouseWheel = FormMouseWheel
  OnResize = FormResize
  TextHeight = 14
  object Viewer: TGLSceneViewer
    Left = 175
    Top = 0
    Width = 690
    Height = 549
    Camera = GLCamera1
    Buffer.BackgroundColor = clBackground
    FieldOfView = 159.353576660156300000
    PenAsTouch = False
    Align = alClient
    OnMouseMove = ViewerMouseMove
    TabOrder = 0
    ExplicitWidth = 523
    ExplicitHeight = 486
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 175
    Height = 549
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 443
    object CheckBoxGrid: TCheckBox
      Left = 8
      Top = 170
      Width = 80
      Height = 17
      Caption = 'Grid'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = CheckBoxVisibleClick
    end
    object ButtonFindIntersect: TButton
      Left = 6
      Top = 80
      Width = 162
      Height = 25
      Caption = 'Find next with intersection'
      Default = True
      TabOrder = 3
      OnClick = ButtonFindIntersectClick
    end
    object CheckBoxPosition: TCheckBox
      Left = 8
      Top = 11
      Width = 120
      Height = 17
      Caption = 'Change box position'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBoxScale: TCheckBox
      Left = 8
      Top = 34
      Width = 120
      Height = 17
      Caption = 'Change box scale'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBoxTriangle: TCheckBox
      Left = 8
      Top = 57
      Width = 120
      Height = 17
      Caption = 'Change triangle'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object ButtonNotFindIntersect: TButton
      Left = 6
      Top = 112
      Width = 162
      Height = 25
      Caption = 'Find next without intersection'
      TabOrder = 4
      OnClick = ButtonNotFindIntersectClick
    end
    object CheckBoxVisible: TCheckBox
      Left = 8
      Top = 146
      Width = 80
      Height = 19
      Caption = 'Box visible'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = CheckBoxVisibleClick
    end
    object CheckBoxAxis: TCheckBox
      Left = 8
      Top = 192
      Width = 80
      Height = 17
      Caption = 'Axis'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = CheckBoxVisibleClick
    end
    object RadioGroupCoPolygon: TRadioGroup
      Left = 16
      Top = 236
      Width = 112
      Height = 105
      Caption = 'Coplanar Polygon'
      ItemIndex = 0
      Items.Strings = (
        'Fill'
        'Lines'
        'Points')
      TabOrder = 8
      OnClick = RadioGroupCoPolygonClick
    end
  end
  object GLScene: TGLScene
    Left = 216
    Top = 24
    object GLCamera1: TGLCamera
      DepthOfView = 500.000000000000000000
      FocalLength = 50.000000000000000000
      NearPlaneBias = 0.100000001490116100
      TargetObject = DCCamTarget
      Position.Coordinates = {0000A04000000040000040400000803F}
      Direction.Coordinates = {000000000000803F0000008000000000}
      Up.Coordinates = {00000000000000000000803F00000000}
      Left = 256
      Top = 144
    end
    object DCCamTarget: TGLDummyCube
      CubeSize = 1.000000000000000000
      VisibleAtRunTime = True
    end
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {00007A4400004844000016440000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLLightSource2: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000FAC30000C8C3000096C30000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLCube1: TGLCube
      Material.FrontProperties.Diffuse.Color = {0000803F00000000000000000000803F}
    end
    object GLXYZGrid1: TGLXYZGrid
      XSamplingScale.Min = -10.000000000000000000
      XSamplingScale.Max = 10.000000000000000000
      XSamplingScale.Step = 3.000000000000000000
      YSamplingScale.Min = -10.000000000000000000
      YSamplingScale.Max = 10.000000000000000000
      YSamplingScale.Step = 3.000000000000000000
      ZSamplingScale.Step = 0.100000001490116100
    end
    object GLPolygon1: TGLPolygon
      Material.FrontProperties.Diffuse.Color = {000000000000803F000000000000803F}
      Nodes = <
        item
        end
        item
          Y = 1.000000000000000000
        end
        item
          Y = 1.000000000000000000
          Z = 1.000000000000000000
        end>
    end
    object GLPolygon2: TGLPolygon
      Nodes = <>
    end
    object GLLines1: TGLLines
      LineWidth = 3.000000000000000000
      Nodes = <
        item
          Color.Color = {0000803F00000000000000000000803F}
        end
        item
          X = 1.000000000000000000
          Color.Color = {0000803F00000000000000000000803F}
        end
        item
          Color.Color = {000000000000003F000000000000803F}
        end
        item
          Y = 1.000000000000000000
          Color.Color = {0AD7A33E48E1FA3E1F85EB3E0000803F}
        end
        item
        end
        item
          Z = 1.000000000000000000
        end>
      NodesAspect = lnaInvisible
      SplineMode = lsmSegments
      Options = [loUseNodeColorForLines]
    end
    object GLPoints1: TGLPoints
      NoZWrite = False
      Static = False
      Size = 6.000000000000000000
    end
    object GLLines2: TGLLines
      LineWidth = 2.000000000000000000
      Nodes = <>
      NodesAspect = lnaInvisible
      Division = 1
      Options = []
    end
  end
  object GLCadencer: TGLCadencer
    Scene = GLScene
    OnProgress = GLCadencerProgress
    Left = 216
    Top = 64
  end
end
