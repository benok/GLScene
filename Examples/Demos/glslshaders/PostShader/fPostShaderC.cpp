//---------------------------------------------------------------------------

#include <vcl.h>
#include <tchar.h>
#pragma hdrstop

#include "fPostShaderC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.GeomObjects"
#pragma link "GLS.Graph"
#pragma link "GLS.Material"
#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.SimpleNavigation"
#pragma link "GLS.VectorFileObjects"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.FileMD2"
#pragma link "GLS.FileMS3D"
#pragma link "GLS.File3DS"

#pragma link "GLSL.PostEffects"
#pragma resource "*.dfm"

TFormPostShader *FormPostShader;

  //Shaders
  TGLSLPostBlurShader *BlurShader;
  TGLSLPostThermalVisionShader *ThermalVisionShader;
  TGLCGPostTransformationShader *TransformationShader;
  TGLSLPostDreamVisionShader *DreamVisionShader;
  TGLSLPostNightVisionShader *NightVisionShader;
  TGLSLPostPosterizeShader *PosterizeShader;
  TGLSLPostFrostShader *FrostShader;
  TGLSLPostPixelateShader *PixelateShader;
  TGLSLPostTroubleShader *TroubleShader;


//---------------------------------------------------------------------------
__fastcall TFormPostShader::TFormPostShader(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormPostShader::FormCreate(TObject *Sender)
{
  // First load models.
  TFileName Path = GetCurrentAssetPath();

  // Loading animated models with texture
  SetCurrentDir(Path + "\\modelext");
  Fighter->LoadFromFile("waste.md2"); //Fighter
  Fighter->SwitchToAnimation(0, true);
  Fighter->AnimationMode = aamLoop;
  Fighter->Scale->Scale(2);
  MaterialLibrary->LibMaterialByName("Fighter")->Material->Texture->Image->LoadFromFile("Waste.jpg");

  // Loading static models
  SetCurrentDir(Path + "\\model");
  Teapot->LoadFromFile("Teapot.3ds"); //Teapot (no texture coordinates)
  Teapot->Scale->Scale(0.8);

  Sphere_big->LoadFromFile("Sphere_big.3DS");
  Sphere_big->Scale->Scale(70);

  Sphere_little->LoadFromFile("Sphere.3ds");
  Sphere_little->Scale->Scale(4);

  // Then loading textures.
  SetCurrentDir(Path + "\\texture");
  MaterialLibrary->LibMaterialByName("Earth")->Material->Texture->Image->LoadFromFile("Earth.jpg");
  MaterialLibrary->LibMaterialByName("Noise")->Material->Texture->Image->LoadFromFile("Flare1.bmp");
  // MaterialLibrary->LibMaterialByName('Noise')->Material->Texture->Image->LoadFromFile("wikiNoise.jpg");
  MaterialLibrary->LibMaterialByName("Mask")->Material->Texture->Image->LoadFromFile("wikiMask.jpg");

  // Creating Blur Shader
  BlurShader = new TGLSLPostBlurShader(this);
  BlurShader->Enabled = false;
  BlurShader->Threshold = 0.001;
  PostShaderHolder->Shaders->Add()->Shader = BlurShader;
  ShaderCheckListBox->Items->AddObject("Blur Shader", BlurShader);
  ShaderCheckListBox->Checked[0] = false;

  // Creating ThermalVision Shader
  ThermalVisionShader = new TGLSLPostThermalVisionShader(this);
  ThermalVisionShader->Enabled = false;
  PostShaderHolder->Shaders->Add()->Shader = ThermalVisionShader;
  ShaderCheckListBox->Items->AddObject("Thermal Vision Shader", ThermalVisionShader);
  ShaderCheckListBox->Checked[1] = false;

  // DreamVision Shader
  DreamVisionShader = new TGLSLPostDreamVisionShader(this);
  DreamVisionShader->Enabled = false;
  PostShaderHolder->Shaders->Add()->Shader = DreamVisionShader;
  ShaderCheckListBox->Items->AddObject("Dream Vision Shader", DreamVisionShader);
  ShaderCheckListBox->Checked[2] = false;

  // NightVision Shader
  NightVisionShader = new TGLSLPostNightVisionShader(this);
  NightVisionShader->Enabled = false;
  NightVisionShader->MaterialLibrary = MaterialLibrary;
  NightVisionShader->NoiseTexName = "Noise";
  NightVisionShader->MaskTexName = "Mask";
  NightVisionShader->UseMask = 1;
  PostShaderHolder->Shaders->Add()->Shader = NightVisionShader;
  ShaderCheckListBox->Items->AddObject("Night Vision Shader", NightVisionShader);
  ShaderCheckListBox->Checked[3] = false;

  // Pixelate Shader
  PixelateShader = new TGLSLPostPixelateShader(this);
  PixelateShader->Enabled = false;
  PostShaderHolder->Shaders->Add()->Shader = PixelateShader;
  ShaderCheckListBox->Items->AddObject("Pixelate Shader", PixelateShader);
  ShaderCheckListBox->Checked[4] = false;

  // Posterize Shader
  PosterizeShader = new TGLSLPostPosterizeShader(this);
  PosterizeShader->Enabled = false;
  PostShaderHolder->Shaders->Add()->Shader = PosterizeShader;
  ShaderCheckListBox->Items->AddObject("Posterize Shader", PosterizeShader);
  ShaderCheckListBox->Checked[5] = false;

  // Frost Shader
  FrostShader = new TGLSLPostFrostShader(this);
  FrostShader->Enabled = false;
  PostShaderHolder->Shaders->Add()->Shader = FrostShader;
  ShaderCheckListBox->Items->AddObject("Frost Shader", FrostShader);
  ShaderCheckListBox->Checked[6] = false;

  // Trouble Shader
  TroubleShader = new TGLSLPostTroubleShader(this);
  TroubleShader->Enabled = false;
  TroubleShader->MaterialLibrary = MaterialLibrary;
  TroubleShader->NoiseTexName = "Noise";
  PostShaderHolder->Shaders->Add()->Shader = TroubleShader;
  ShaderCheckListBox->Items->AddObject("Trouble Shader", TroubleShader);
  ShaderCheckListBox->Checked[7] = false;

  // Transformation Shader
  TransformationShader = new TGLCGPostTransformationShader(this);
  TransformationShader->TransformationTexture = MaterialLibrary->LibMaterialByName("Noise")->Material->Texture;
  PostShaderHolder->Shaders->Add()->Shader = TransformationShader;

  ShaderCheckListBox->Items->AddObject("Transformation Shader", TransformationShader);
  ShaderCheckListBox->Checked[1] = true;
}

//---------------------------------------------------------------------------
void __fastcall TFormPostShader::CadencerProgress(TObject *Sender, const double deltaTime,
		  const double newTime)
{
  Viewer->Invalidate();

  if (TurnPitchrollCheckBox->Checked) {
	Fighter->Roll(20 * deltaTime);
	Sphere_big->Pitch(40 * deltaTime);
	Sphere_big->Turn(40 * deltaTime);
	Sphere_little->Roll(40 * deltaTime);
	Teapot->Roll(-20 * deltaTime);
  }
  if (NightVisionShader->Enabled)
	NightVisionShader->ElapsedTime = newTime; // 20*deltaTime;
}
//---------------------------------------------------------------------------
void __fastcall TFormPostShader::LightCubeProgress(TObject *Sender, const double deltaTime,
		  const double newTime)
{
  if (LightMovingCheckBox->Checked)
	LightCube->MoveObjectAround(Camera->TargetObject, sin(newTime) * deltaTime * 10, deltaTime * 20);
}

//---------------------------------------------------------------------------
void __fastcall TFormPostShader::ShaderCheckListBoxClick(TObject *Sender)
{
  int I;
  if (ShaderCheckListBox->Items->Count != 0)
	for (I = 0; I < ShaderCheckListBox->Items->Count - 1; I++) {
///	  TGLShader(ShaderCheckListBox->Items->Objects[I])->Enabled = ShaderCheckListBox->Checked[I];
	}
}

//---------------------------------------------------------------------------

void __fastcall TFormPostShader::tbBlurValueChange(TObject *Sender)
{
/*
  BlurShader->Threshold = tbBlurValue->Position / 100;
  lblBlurValue->Caption = FloatToStrF(BlurShader->Threshold, ffFixed, 5, 2);

  if (BigBlurThickness->Checkbox = Checked)
	BlurShader->Threshold = 0.005;
  else
	BlurShader->Threshold = 0.2;
*/
}
//---------------------------------------------------------------------------

void __fastcall TFormPostShader::tbDreamThresholdChange(TObject *Sender)
{
//
}

//---------------------------------------------------------------------------

void __fastcall TFormPostShader::tbThermalThresholdChange(TObject *Sender)
{
//
}

//---------------------------------------------------------------------------

void __fastcall TFormPostShader::tbThermalIntensityChange(TObject *Sender)
{
//
}


//---------------------------------------------------------------------------
void __fastcall TFormPostShader::FormClose(TObject *Sender, TCloseAction &Action)
{
  Cadencer->Enabled = false;
}


//---------------------------------------------------------------------------

