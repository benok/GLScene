//---------------------------------------------------------------------------

#include <vcl.h>
#include <math.h>
#pragma hdrstop

#include "fDiffuseShaderC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLSL.CustomShader"
#pragma link "GLS.GeomObjects"
#pragma link "GLS.Graph"
#pragma link "GLS.Material"
#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.SimpleNavigation"
#pragma link "GLSL.DiffuseSpecularShader"
#pragma link "GLSL.Shader"
#pragma link "GLS.VectorFileObjects"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.FileSMD"
#pragma link "GLS.FileMD2"
#pragma link "GLS.File3DS"
#pragma link "GLS.FileMS3D"

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
  TFileName Path = GetCurrentAssetPath();

  // First load modelexts with animation and textures
  SetCurrentDir(Path + "\\modelext");
  Fighter->LoadFromFile("waste.md2"); //Fighter
  Fighter->SwitchToAnimation(0, True);
  Fighter->AnimationMode = aamLoop;
  Fighter->Scale->Scale(3);
  MaterialLibrary->LibMaterialByName("Fighter")->Material->Texture->Image->LoadFromFile("Waste.jpg");
  MaterialLibrary->LibMaterialByName("Fighter")->Shader = DiffuseSpecularShader;

  // Loading static models
  SetCurrentDir(Path + "\\model");
  Teapot->LoadFromFile("Teapot.3ds"); //Teapot
  Teapot->Scale->Scale(0.8);
  Sphere_big->LoadFromFile("Sphere_big.3DS"); //Sphere_big
  Sphere_big->Scale->Scale(70);
  Sphere_little->LoadFromFile("Sphere.3ds"); //Sphere_little
  Sphere_little->Scale->Scale(4);

  // Then load textures
  SetCurrentDir(Path + "\\texture");
  MaterialLibrary->LibMaterialByName("Earth")->Material->Texture->Image->LoadFromFile("Earth.jpg");
  MaterialLibrary->LibMaterialByName("Earth")->Shader = DiffuseSpecularShader;

  // This is how a shader is created in runtime.
  MultiLightShader = new TGLSLMLDiffuseSpecularShader(this);

  // Disable fog.
  EnableFogCheckBoxClick(NULL);

  MultiLightShaderCheckBoxClick(NULL);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::EnableFogCheckBoxClick(TObject *Sender)
{
  if (EnableFogCheckBox->Checked) {
	Viewer->Buffer->FogEnable = true;
	DiffuseSpecularShader->NotifyChange(Sender);
	MultiLightShader->NotifyChange(Sender);
  }
  else {
	Viewer->Buffer->FogEnable = false;
	DiffuseSpecularShader->NotifyChange(Sender);
	MultiLightShader->NotifyChange(Sender);
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CadencerProgress(TObject *Sender, const double deltaTime,
          const double newTime)
{
  Viewer->Invalidate();

  if (PitchRollTurnCheckBox->Checked)
  {
	Sphere_big->Pitch(deltaTime * 40);
	Sphere_little->Roll(deltaTime * 20);
	Fighter->Roll(deltaTime * 40);
	Teapot->Roll(-deltaTime * 10);
  }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::MultiLightShaderCheckBoxClick(TObject *Sender)
{
  if (MultiLightShaderCheckBox->Checked)
  {
	MaterialLibrary->LibMaterialByName("Earth")->Shader = MultiLightShader;
	MaterialLibrary->LibMaterialByName("Fighter")->Shader = MultiLightShader;
  }
  else {
	MaterialLibrary->LibMaterialByName("Earth")->Shader = DiffuseSpecularShader;
	MaterialLibrary->LibMaterialByName("Fighter")->Shader = DiffuseSpecularShader;
  }
  Light2->Shining = MultiLightShaderCheckBox->Checked;
  LightCube2->Visible = MultiLightShaderCheckBox->Checked;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::RealisticSpecularCheckBoxClick(TObject *Sender)
{
  DiffuseSpecularShader->RealisticSpecular = RealisticSpecularCheckBox->Checked;
  MultiLightShader->RealisticSpecular = RealisticSpecularCheckBox->Checked;
  if (DiffuseSpecularShader->RealisticSpecular) {
	MaterialLibrary->Materials->Items[0]->Material->FrontProperties->Shininess = 20;
	MaterialLibrary->Materials->Items[1]->Material->FrontProperties->Shininess = 20;
  }
  else {
	MaterialLibrary->Materials->Items[0]->Material->FrontProperties->Shininess = 8;
	MaterialLibrary->Materials->Items[1]->Material->FrontProperties->Shininess = 8;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::LightCubeProgress(TObject *Sender, const double deltaTime,
          const double newTime)
{
  if (LightMovingCheckBox->Checked)
	LightCube->MoveObjectAround(Camera->TargetObject, sin(newTime) * deltaTime * 10, deltaTime * 20);
}
//---------------------------------------------------------------------------

