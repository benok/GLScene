object FormFire2d_GR32: TFormFire2d_GR32
  Left = 89
  Top = 65
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Fire 2D'
  ClientHeight = 686
  ClientWidth = 1144
  Color = clBtnFace
  Constraints.MinHeight = 431
  Constraints.MinWidth = 448
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 168
  TextHeight = 23
  object Label5: TLabel
    Left = 0
    Top = 0
    Width = 1144
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Caption = 'Dynamic Texture'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 9
    ExplicitTop = 10
    ExplicitWidth = 228
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 458
    Top = 0
    Width = 686
    Height = 686
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Camera = GLCamera1
    Buffer.BackgroundColor = 3881787
    Buffer.Lighting = False
    FieldOfView = 147.492416381835900000
    PenAsTouch = False
    OnMouseDown = GLSceneViewer1MouseDown
    OnMouseMove = GLSceneViewer1MouseMove
    OnMouseUp = GLSceneViewer1MouseUp
    TabOrder = 0
  end
  object PaintBox32: TPaintBox32
    Left = 0
    Top = 238
    Width = 448
    Height = 448
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 1
    OnMouseDown = GLSceneViewer1MouseDown
    OnMouseMove = GLSceneViewer1MouseMove
    OnMouseUp = GLSceneViewer1MouseUp
  end
  object Memo1: TMemo
    Left = 0
    Top = 43
    Width = 448
    Height = 185
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Lines.Strings = (
      'The 2D fire animation below is a pure 2D '
      'animated'
      'texture using Graphics32 '
      '(www.graphics32.org)'
      'It is refreshed every 40 ms and used to '
      'update'
      'the cube'#39's texture you see on the right.')
    TabOrder = 2
  end
  object AsyncTimer1: TGLAsyncTimer
    Interval = 80
    OnTimer = AsyncTimer1Timer
    Left = 40
    Top = 144
  end
  object GLScene1: TGLScene
    Left = 296
    Top = 16
    object Cube1: TGLCube
      Material.Texture.MinFilter = miLinear
      Material.Texture.TextureMode = tmReplace
      Material.Texture.Compression = tcNone
      Material.Texture.Disabled = False
      Material.MaterialLibrary = GLMaterialLibrary1
    end
    object GLCamera1: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 100.000000000000000000
      SceneScale = 1.500000000000000000
      TargetObject = Cube1
      Position.Coordinates = {0000804000000000000000400000803F}
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 136
    Top = 144
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    OnProgress = GLCadencer1Progress
    Left = 384
    Top = 16
  end
  object GLMaterialLibrary1: TGLMaterialLibrary
    Materials = <
      item
        Name = 'LibMaterial'
        Tag = 0
        Material.Texture.ImageClassName = 'TGLPicFileImage'
        Material.MaterialLibrary = GLMaterialLibrary1
      end>
    Left = 488
    Top = 16
  end
end
