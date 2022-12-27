//---------------------------------------------------------------------------

#include <vcl.h>
#include <tchar.h>

#pragma hdrstop

#include "fMultiTexturesC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.BitmapFont"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLSL.CustomShader"
#pragma link "GLS.FBORenderer"
#pragma link "GLS.GeomObjects"
#pragma link "GLS.HUDObjects"
#pragma link "GLS.Material"
#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.SimpleNavigation"
#pragma link "GLSL.Shader"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.WindowsFont"
#pragma link "GLS.MultiSampleImage"


#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
//  Width  = Screen->Width;
//  Height = Screen->Height;

  MainMaterialLibrary->TextureByName("MultisampledColor")->ImageClassName = "TGLMultisampleImage";
  ((TGLMultisampleImage *)(MainMaterialLibrary->TextureByName("MultisampledColor")->Image))->SamplesCount = 16;

  MainMaterialLibrary->TextureByName("Depth")->ImageClassName = "TGLMultisampleImage";
  ((TGLMultisampleImage *)(MainMaterialLibrary->TextureByName("Depth")->Image))->SamplesCount = 16;

  GLSLShader1->Enabled = true;

  GLHUDText1->Text = "F1/F2 - Multisampling and F3/F4 - Wireframe mode";
}
//---------------------------------------------------------------------------
void __fastcall TForm1::MainCadencerProgress(TObject *Sender, const double deltaTime,
		  const double newTime)
{
  if (IsKeyDown(VK_F2))
  {
	FBOContainer->Visible = false;
	GLScreenQuad->Visible = false;
	SceneObjects->Visible = true;
  }

  if (IsKeyDown(VK_F1))
  {
	FBOContainer->Visible = true;
	GLScreenQuad->Visible = true;
	SceneObjects->Visible = false;
  }

  if (IsKeyDown(VK_F3))
  {
	GLTorus1->Material->PolygonMode = pmLines;
	GLTorus2->Material->PolygonMode = pmLines;
	GLCone1->Material->PolygonMode = pmLines;
  }

  if (IsKeyDown(VK_F4))
  {
	GLTorus1->Material->PolygonMode = pmFill;
	GLTorus2->Material->PolygonMode = pmFill;
	GLCone1->Material->PolygonMode = pmFill;
  }
  MainViewer->Invalidate();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormResize(TObject *Sender)
{
  MultisampleFBO->Width = MainViewer->Width;
  MultisampleFBO->Height = MainViewer->Height;
  GLScreenQuad->Width  = MainViewer->Width;
  GLScreenQuad->Height = MainViewer->Height;
  GLScreenQuad->Position->SetPoint(
	MainViewer->Width / 2,
	MainViewer->Height / 2, 0);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::GLSLShader1Apply(TGLCustomGLSLShader *Shader)
{
  Shader->Param["TexUnit0"]->AsTexture[0] =
	 MainMaterialLibrary->TextureByName("MultisampledColor");
  Shader->Param["ViewerSize"]->AsVector2f =
	 Vector2fMake(MainViewer->Width, MainViewer->Height);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::MainViewerBeforeRender(TObject *Sender)
{
/*
  if (GL_EXT_framebuffer_multisample)
  {
	ShowMessage("Sorry, your hardware do not support Multisampling");
	Close();
  }
*/
}
//---------------------------------------------------------------------------

