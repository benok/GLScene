unit fSkyboxShaderD;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Controls,

  GLS.VectorGeometry,
  GLS.Cadencer,
  GLS.SceneViewer,
  GLS.Scene,
  GLS.VectorTypes,
  GLS.Objects,
  GLS.GeomObjects,
  GLS.Texture,
  GLS.TextureFormat,
  GLS.CompositeImage,
  GLS.Material,
  GLS.Coordinates,
  GLS.BaseClasses,

  GLS.Context,
  GLS.RenderContextInfo,
  GLS.Utils,

  GLS.FileDDS;

type
  TFormSkyboxShader = class(TForm)
    GLScene1: TGLScene;
    Cadencer: TGLCadencer;
    SceneViewer: TGLSceneViewer;
    Camera: TGLCamera;
    DummyCam: TGLDummyCube;
    Thor: TGLTorus;
    Sphere: TGLSphere;
    Skybox: TGLSphere;
    DirectOGL: TGLDirectOpenGL;
    procedure CadencerProgress(Sender: TObject; const DeltaTime, NewTime: Double);
    procedure FormCreate(Sender: TObject);
    procedure DirectOGLRender(Sender: TObject; var rci: TGLRenderContextInfo);
  public
    Path: TFileName;
    GLSL_Sky: TGLProgramHandle;
    GLSL_Obj: TGLProgramHandle;
    CubeMap: TGLTexture;
    procedure LoadCubemap;
    procedure InitGLSL;
  end;

var
  FormSkyboxShader: TFormSkyboxShader;

implementation

{$R *.dfm}

procedure TFormSkyboxShader.FormCreate;
begin
  Path := GetCurrentAssetPath();
  // Loading a cubemap as TGLCompositeImage
  SetCurrentDir(Path  + '\cubemap');
  LoadCubemap;
  Skybox.Radius := Camera.DepthOfView;
  Skybox.Material.Texture := Cubemap;
  Sphere.Material.Texture := Cubemap;
  Thor.Material.Texture := Cubemap;

end;

procedure TFormSkyboxShader.LoadCubemap;
begin
  Cubemap := TGLTexture.Create(self);
  Cubemap.ImageClassName := 'TGLCompositeImage';
  Cubemap.Image.LoadFromFile('skybox.dds');
  Cubemap.TextureWrap := twNone;
  Cubemap.FilteringQuality := tfAnisotropic;
  Cubemap.Disabled := False;
end;

procedure TFormSkyboxShader.CadencerProgress;
begin
  DummyCam.Turn(deltaTime * 30);
  Thor.Pitch(deltaTime * 50);
  Camera.Position.Y := 3 * cos(NewTime / 3);
  Skybox.AbsolutePosition := Camera.AbsolutePosition;
end;

// Direct OpenGL rendering
//
procedure TFormSkyboxShader.DirectOGLRender;
begin
  if not Cadencer.Enabled then
    initGLSL;
  // sky cubemap
  GLSL_sky.UseProgramObject;
  Skybox.Render(rci);
  GLSL_sky.EndUseProgramObject;
  // object cubemap
  GLSL_obj.UseProgramObject;
  GLSL_obj.UniformMatrix4fv['m4'] := Sphere.AbsoluteMatrix;
  Sphere.Render(rci);
  GLSL_obj.UniformMatrix4fv['m4'] := Thor.AbsoluteMatrix;
  Thor.Render(rci);
  GLSL_obj.EndUseProgramObject;
end;

// GLSL Initialization
//
function Load(vp, fp: String): TGLProgramHandle;
begin
  Result := TGLProgramHandle.CreateAndAllocate;
  Result.AddShader(TGLVertexShaderHandle, LoadAnsiStringFromFile(vp));
  Result.AddShader(TGLFragmentShaderHandle, LoadAnsiStringFromFile(fp));
  if not Result.LinkProgram then
    raise Exception.Create(Result.InfoLog);
  if not Result.ValidateProgram then
    raise Exception.Create(Result.InfoLog);
end;

procedure TFormSkyboxShader.InitGLSL;
begin
  if not(GL.ARB_shader_objects and GL.ARB_vertex_program and
    GL.ARB_vertex_shader and GL.ARB_fragment_shader and GL.ARB_texture_cube_map)
  then
  begin
    ShowMessage('shader not supported by your hardware');
    Halt;
  end;

  Cadencer.Enabled := True;

 // Loading shaders from asset
  SetCurrentDir(Path  + '\shader');
  GLSL_sky := Load('sky.vp', 'sky.fp');
  GLSL_obj := Load('obj.vp', 'obj.fp');

end;

end.
