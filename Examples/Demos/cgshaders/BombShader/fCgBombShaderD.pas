unit fCgBombShaderD;

interface

uses
  Winapi.OpenGL,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.Jpeg,

  GLS.Scene,
  GLS.Objects,
  GLS.SceneViewer,
  GLS.Texture,
  GLS.Cadencer,
  GLS.SimpleNavigation,
  GLS.VectorFileObjects,
  GLS.File3DS,
  GLS.Graph,
  GLS.Material,
  GLS.VectorGeometry,
  GLS.Coordinates,
  GLS.BaseClasses,
  GLS.Utils,

  GLS.FileMD2,
  Cg.BombShader;

type
  TFormCgBombShader = class(TForm)
    GLScene1: TGLScene;
    GLCamera1: TGLCamera;
    GLLightSource1: TGLLightSource;
    GLMaterialLibrary1: TGLMaterialLibrary;
    GLCadencer1: TGLCadencer;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel9: TPanel;
    GLSceneViewer1: TGLSceneViewer;
    Timer1: TTimer;
    GLXYZGrid1: TGLXYZGrid;
    GLDummyCube1: TGLDummyCube;
    ffTeapot: TGLFreeForm;
    ffSphere1: TGLFreeForm;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ffSphere2: TGLFreeForm;
    CheckBox4: TCheckBox;
    JustATestCube: TGLCube;
    ShaderEnabledCheckBox: TCheckBox;
    GLSimpleNavigation1: TGLSimpleNavigation;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    TrackBar5: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar8: TTrackBar;
    TrackBar9: TTrackBar;
    GLActor1: TGLActor;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure GLCadencer1Progress(Sender: TObject;
      const DeltaTime, newTime: Double);
    procedure CheckBox1Click(Sender: TObject);
    procedure ShaderEnabledCheckBoxClick(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure TrackBar5Change(Sender: TObject);
    procedure TrackBar6Change(Sender: TObject);
    procedure TrackBar7Change(Sender: TObject);
    procedure TrackBar8Change(Sender: TObject);
    procedure TrackBar9Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
  public
    mx, my: Integer;
    procedure ResetPositions;
  end;

var
  FormCgBombShader: TFormCgBombShader;
  MyShader: TCgBombShader;

implementation

{$R *.dfm}

procedure TFormCgBombShader.FormCreate(Sender: TObject);
begin
  var Path: TFileName := GetCurrentAssetPath();

  // First load static models from asset directory
  SetCurrentDir(Path  + '\model');
  ffTeapot.LoadFromFile('Teapot.3ds');
  ffSphere1.LoadFromFile('Sphere.3DS');
  ffSphere2.LoadFromFile('Sphere_big.3DS');
  ffSphere2.Scale.Scale(20);

  // Second loading dynamic models with texture and animation
  SetCurrentDir(Path  + '\modelext');
  GLActor1.LoadFromFile('waste.md2'); // Fighter
  GLActor1.SwitchToAnimation(0, True);
  GLActor1.AnimationMode := aamLoop;
  GLActor1.Scale.Scale(0.05);
  GLMaterialLibrary1.LibMaterialByName('FighterTexture').
    Material.Texture.Image.LoadFromFile('waste.jpg');

  // Next loading other textures
  SetCurrentDir(Path  + '\texture');
  GLMaterialLibrary1.LibMaterialByName('marbles1')
    .Material.Texture.Image.LoadFromFile('beigemarble.jpg');
  GLMaterialLibrary1.LibMaterialByName('marbles2')
    .Material.Texture.Image.LoadFromFile('marbletiles.jpg');
  GLMaterialLibrary1.LibMaterialByName('snow')
    .Material.Texture.Image.LoadFromFile('snow512.jpg');
  GLMaterialLibrary1.LibMaterialByName('Fire')
    .Material.Texture.Image.LoadFromFile('FireGrade.png');


  MyShader := TCgBombShader.Create(Self);
  MyShader.MainTexture := GLMaterialLibrary1.LibMaterialByName('FighterTexture')
    .Material.Texture;
  MyShader.Cadencer := GLCadencer1;

  // All models are linked with this material
  GLMaterialLibrary1.LibMaterialByName('LibMaterial').Shader := MyShader;

  ResetPositions;
  ComboBox1Change(Self);
end;

procedure TFormCgBombShader.ComboBox1Change(Sender: TObject);
begin
  MyShader.GradientTexture := GLMaterialLibrary1.LibMaterialByName
    (ComboBox1.Text).Material.Texture;
end;

procedure TFormCgBombShader.GLCadencer1Progress(Sender: TObject;
  const DeltaTime, newTime: Double);
begin
  GLSceneViewer1.Invalidate();
end;

procedure TFormCgBombShader.ResetPositions;
begin
  TrackBar1.Position := Round(InterpolateCombinedSafe(0.01, 10,
    MyShader.Displacement, 0, 100, 1, itLinear));
  TrackBar2.Position := Round(InterpolateCombinedSafe(-0.13, 10,
    MyShader.Sharpness, 0, 100, 1, itLinear));
  TrackBar3.Position := Round(InterpolateCombinedSafe(0.01, 6,
    MyShader.ColorSharpness, 0, 100, 1, itLinear));
  TrackBar4.Position := Round(InterpolateCombinedSafe(0.1, 1, MyShader.Speed, 0,
    100, 1, itLinear));
  TrackBar5.Position := Round(InterpolateCombinedSafe(0.01, 8,
    MyShader.TurbDensity, 0, 100, 1, itLinear));
  TrackBar6.Position := Round(InterpolateCombinedSafe(-0.5, 0.5,
    MyShader.ColorRange, 0, 100, 1, itLinear));
  TrackBar7.Position := Round(InterpolateCombinedSafe(0, 1, MyShader.Alpha, 0,
    100, 1, itLinear));
  TrackBar8.Position := Round(InterpolateCombinedSafe(0, 2,
    MyShader.MainTextureShare, 0, 100, 1, itLinear));
  TrackBar9.Position := Round(InterpolateCombinedSafe(0, 2,
    MyShader.GradientTextureShare, 0, 100, 1, itLinear));
end;

procedure TFormCgBombShader.CheckBox1Click(Sender: TObject);
begin
  GLActor1.Visible := CheckBox1.Checked;
  ffTeapot.Visible := CheckBox2.Checked;
  ffSphere1.Visible := CheckBox3.Checked;
  ffSphere2.Visible := CheckBox4.Checked;
end;

procedure TFormCgBombShader.ShaderEnabledCheckBoxClick(Sender: TObject);
begin
  MyShader.Enabled := ShaderEnabledCheckBox.Checked;
end;

procedure TFormCgBombShader.TrackBar1Change(Sender: TObject);
begin
  if MyShader = nil then
    Exit;
  MyShader.Displacement := InterpolateCombinedSafe(0, 100, TrackBar1.Position,
    0.01, 10, 1, itLinear);
end;

procedure TFormCgBombShader.TrackBar2Change(Sender: TObject);
begin
  MyShader.Sharpness := InterpolateCombinedSafe(0, 100, TrackBar2.Position,
    -0.13, 10, 1, itLinear);
end;

procedure TFormCgBombShader.TrackBar3Change(Sender: TObject);
begin
  MyShader.ColorSharpness := InterpolateCombinedSafe(0, 100, TrackBar3.Position,
    0.01, 6, 1, itLinear);
end;

procedure TFormCgBombShader.TrackBar4Change(Sender: TObject);
begin
  MyShader.Speed := InterpolateCombinedSafe(0, 100, TrackBar4.Position, 0.1, 1,
    1, itLinear);
end;

procedure TFormCgBombShader.TrackBar5Change(Sender: TObject);
begin
  MyShader.TurbDensity := InterpolateCombinedSafe(0, 100, TrackBar5.Position,
    0.1, 8, 1, itLinear);
end;

procedure TFormCgBombShader.TrackBar6Change(Sender: TObject);
begin
  MyShader.ColorRange := InterpolateCombinedSafe(0, 100, TrackBar6.Position,
    -0.5, 0.5, 1, itLinear);
end;

procedure TFormCgBombShader.TrackBar7Change(Sender: TObject);
begin
  MyShader.Alpha := InterpolateCombinedSafe(0, 100, TrackBar7.Position, 0, 1, 1,
    itLinear);
end;

procedure TFormCgBombShader.TrackBar8Change(Sender: TObject);
begin
  MyShader.MainTextureShare := InterpolateCombinedSafe(0, 100,
    TrackBar8.Position, 0, 2, 1, itLinear);
end;

procedure TFormCgBombShader.TrackBar9Change(Sender: TObject);
begin
  MyShader.GradientTextureShare := InterpolateCombinedSafe(0, 100,
    TrackBar9.Position, 0, 2, 1, itLinear);
end;

end.
