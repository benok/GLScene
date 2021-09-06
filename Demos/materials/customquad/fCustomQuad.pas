unit fCustomQuad;

interface

uses
  Winapi.OpenGL,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Imaging.Jpeg,

  GLS.Cadencer,
  GLS.Scene,
  GLS.Objects,
  GLS.Texture,
  GLS.Behaviours,
  GLS.SceneViewer,
  GLS.GeomObjects,
  GLS.Color,

  GLS.Material,
  GLS.Coordinates,
  GLS.BaseClasses,
  GLS.RenderContextInfo;

type
  TFormCustomQuad = class(TForm)
    GLScene1: TGLScene;
    GLSceneViewer1: TGLSceneViewer;
    GLMaterialLibrary: TGLMaterialLibrary;
    GLCamera1: TGLCamera;
    DummyCube1: TGLDummyCube;
    Torus1: TGLTorus;
    DirectOpenGL1: TGLDirectOpenGL;
    GLLightSource1: TGLLightSource;
    GLCadencer1: TGLCadencer;
    procedure DirectOpenGL1Render(Sender: TObject;
      var rci: TGLRenderContextInfo);
    procedure FormCreate(Sender: TObject);
  private
  end;

var
  FormCustomQuad: TFormCustomQuad;

implementation

{$R *.DFM}

uses
  GLS.Context,
  GLS.State,
  GLS.Utils;

procedure TFormCustomQuad.FormCreate(Sender: TObject);
begin
  SetGLSceneMediaDir();
  // dynamically create 2 materials and load 2 textures
  with GLMaterialLibrary do
  begin
    AddTextureMaterial('wood', 'ashwood.jpg').Material.FrontProperties.Emission.
      Color := clrGray50;
    AddTextureMaterial('wood', 'ashwood.jpg').Material.FaceCulling := fcNoCull;

    AddTextureMaterial('stone', 'walkway.jpg').Material.FrontProperties.Emission.
      Color := clrGray50;
    AddTextureMaterial('stone', 'walkway.jpg').Material.FaceCulling := fcNoCull;
  end;
end;

procedure TFormCustomQuad.DirectOpenGL1Render(Sender: TObject;
  var rci: TGLRenderContextInfo);
var
  Material: TGLLibMaterial;
begin
  // 1st quad, textured with 'wood', using standard method
  GLMaterialLibrary.ApplyMaterial('wood', rci);
  glBegin(GL_QUADS);
  glTexCoord2f(0, 1);
  glVertex3f(0.5, 0.5, -0.5);
  glTexCoord2f(0, 0);
  glVertex3f(-0.5, 0.5, -0.5);
  glTexCoord2f(1, 0);
  glVertex3f(-0.5, 0, 0.5);
  glTexCoord2f(1, 1);
  glVertex3f(0.5, 0, 0.5);
  glEnd;
  GLMaterialLibrary.UnApplyMaterial(rci);
  // 2nd quad, textured with 'stone'
  // we "manually" apply the material, this can be usefull if you want to have
  // some dynamic material control
  Material := GLMaterialLibrary.Materials.GetLibMaterialByName('stone');
  Material.Material.Apply(rci);
  glBegin(GL_QUADS);
  glTexCoord2f(0, 1);
  glVertex3f(0.5, -0.5, -0.5);
  glTexCoord2f(0, 0);
  glVertex3f(0.5, 0, 0.5);
  glTexCoord2f(1, 0);
  glVertex3f(-0.5, 0, 0.5);
  glTexCoord2f(1, 1);
  glVertex3f(-0.5, -0.5, -0.5);
  glEnd;
  Material.Material.UnApply(rci);
end;

end.
