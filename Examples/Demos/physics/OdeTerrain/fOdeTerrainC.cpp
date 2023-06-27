//---------------------------------------------------------------------------

#include <vcl.h>
#include <tchar.h>

#pragma hdrstop

#include "fOdeTerrainC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.BitmapFont"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.HeightData"
#pragma link "GLS.HUDObjects"
#pragma link "GLS.LensFlare"
#pragma link "GLS.Material"
#pragma link "GLS.Navigator"
#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.SkyDome"
#pragma link "GLS.TerrainRenderer"
#pragma link "GLS.SceneViewer"
#pragma link "Physics.ODEManager"
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
   SetCurrentDir(Path  + "\\texture");

   // Set up the visuals
   GLBitmapHDS1->MaxPoolSize = 8*1024*1024;
   GLBitmapHDS1->Picture->LoadFromFile("terrain.bmp");
   GLMaterialLibrary1->Materials->Items[0]->Material->Texture->Image->LoadFromFile("snow512.jpg");
   GLMaterialLibrary1->Materials->Items[1]->Material->Texture->Image->LoadFromFile("detailmap.jpg");
   SPMoon->Material->Texture->Image->LoadFromFile("moon.bmp");
   SPSun->Material->Texture->Image->LoadFromFile("flare1.bmp");
   TerrainRenderer1->TilesPerTexture = (float)256/TerrainRenderer1->TileSize;
   
   SetCurrentDir(Path + "\\font");
   BitmapFont1->Glyphs->LoadFromFile("darkgold_font.bmp");
   GLSceneViewer1->Buffer->BackgroundColor = clWhite;
   GLNavigator1->TurnHorizontal(90);

   GLUserInterface1->MouseLookActivate();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLCadencer1Progress(TObject *Sender, const double deltaTime,
		  const double newTime)
{
   float speed, interpolated_height;

   // handle keypresses
   if (IsKeyDown(VK_SHIFT))
	  speed = 50*deltaTime;
   else
	  speed = 10*deltaTime;
   if (IsKeyDown(VK_UP))
		GLNavigator1->MoveForward(speed);
   if (IsKeyDown(VK_DOWN))
		GLNavigator1->MoveForward(-speed);
   if (IsKeyDown(VK_LEFT))
		GLNavigator1->StrafeHorizontal(-speed);
   if (IsKeyDown(VK_RIGHT))
		GLNavigator1->StrafeHorizontal(speed);
   if (IsKeyDown(VK_PRIOR))
		 GLNavigator1->StrafeVertical(speed);
   if (IsKeyDown(VK_NEXT))
		 GLNavigator1->StrafeVertical(-speed);
   if (IsKeyDown(VK_ESCAPE))
		Close();

   interpolated_height =
     TerrainRenderer1->InterpolatedHeight(GLCamera1->Position->AsVector);
   if (GLCamera1->Position->Z < interpolated_height+5)
	   GLCamera1->Position->Z = interpolated_height+5;

   GLODEManager1->Step(deltaTime);

   GLUserInterface1->MouseUpdate();
   GLUserInterface1->MouseLook();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
   HUDText1->Text = Format("%.1f FPS - %d", ARRAYOFCONST
					((GLSceneViewer1->FramesPerSecond(),
					  TerrainRenderer1->LastTriangleCount)));
   GLSceneViewer1->ResetPerformanceMonitor();
}

//---------------------------------------------------------------------------

void __fastcall TForm1::FormKeyPress(TObject *Sender, System::WideChar &Key)
{
  TGLMaterial *fp;
  TGLFogEnvironment *fe;

  TGLBaseSceneObject *dummy;
  TGLODEDynamic *dyn;
  TGLODEElementClass *anElementClass;

  TGLODEElementSphere *elSphere;
  TGLODEElementBox *elBox;
  TGLODEElementCapsule *elCapsule;
  TGLODEElementCylinder *elCylinder;


  dummy = ODEObjects->AddNewChild(__classid(TGLDummyCube));
  dummy->Position->AsVector = ODEDrop->AbsolutePosition;
  dyn = new TGLODEDynamic(dummy->Behaviours);

  switch (Key)
  {
  case 'w':
  case 'W':
	fp = GLMaterialLibrary1->Materials->Items[0]->Material;
	if(fp->PolygonMode == pmLines)
	  fp->PolygonMode = pmFill;
	else
	  fp->PolygonMode = pmLines;
	break;
  case '+':
	if(GLCamera1->DepthOfView < 2000)
	{
	  GLCamera1->DepthOfView = GLCamera1->DepthOfView * 1.2;
	  fe = GLSceneViewer1->Buffer->FogEnvironment;
	  fe->FogEnd = fe->FogEnd * 1.2;
	  fe->FogStart = fe->FogStart * 1.2;
	}
	break;
  case '-':
	if(GLCamera1->DepthOfView > 300)
    {
      GLCamera1->DepthOfView = GLCamera1->DepthOfView / 1.2;
      fe = GLSceneViewer1->Buffer->FogEnvironment;
	  fe->FogEnd = fe->FogEnd / 1.2;
      fe->FogStart = fe->FogStart / 1.2;
	}
    break;
  case '*':
    if(TerrainRenderer1->CLODPrecision > 20)
      TerrainRenderer1->CLODPrecision =
		RoundInt(TerrainRenderer1->CLODPrecision * 0.8);
	break;
  case '/':
	if(TerrainRenderer1->CLODPrecision < 1000)
	  TerrainRenderer1->CLODPrecision =
		RoundInt(TerrainRenderer1->CLODPrecision * 1.2);
	break;
  case '8':
	if(TerrainRenderer1->QualityDistance > 40)
	  TerrainRenderer1->QualityDistance =
		RoundInt(TerrainRenderer1->QualityDistance * 0.8);
	break;
  case '9':
    if(TerrainRenderer1->QualityDistance < 1000)
      TerrainRenderer1->QualityDistance =
        RoundInt(TerrainRenderer1->QualityDistance * 1.2);
	break;
  case 'n':
  case 'N':
    if(SkyDome1->Stars->Count == 0)
    {
      // turn on 'night' mode
	  SkyDome1->Bands->Items[1]->StopColor->AsWinColor = clNavy;  //(Graphics::TColor) RGB(0, 0, 16);
	  SkyDome1->Bands->Items[1]->StartColor->AsWinColor = clBlue; //(Graphics::TColor) RGB(0, 0, 8);
	  SkyDome1->Bands->Items[0]->StopColor->AsWinColor = clBlue;  //(Graphics::TColor) RGB(0, 0, 8);
      SkyDome1->Bands->Items[0]->StartColor->AsWinColor = clWhite; //(Graphics::TColor) RGB(0, 0, 0);

	  SkyDome1->Stars->AddRandomStars(700, clWhite, True);      // many white stars
	  SkyDome1->Stars->AddRandomStars(100, (Vcl::Graphics::TColor) RGB(255, 200, 200), True);        // some redish ones
	  SkyDome1->Stars->AddRandomStars(100, (Vcl::Graphics::TColor) RGB(200, 200, 255), True);        // some blueish ones
	  SkyDome1->Stars->AddRandomStars(100, (Vcl::Graphics::TColor) RGB(255, 255, 200), True);        // some yellowish ones

      GLSceneViewer1->Buffer->BackgroundColor = Vcl::Graphics::clBlack;
      fe = GLSceneViewer1->Buffer->FogEnvironment;
      fe->FogColor->AsWinColor = Vcl::Graphics::clBlack;
	  fe->FogStart = -fe->FogStart;     // Fog is used to make things darker

	  SPMoon->Visible = True;
      SPSun->Visible = False;
      GLLensFlare->Visible = False;
    }
    break;
  case 'd':
  case 'D':
	if(SkyDome1->Stars->Count > 0)
    {
      // turn on 'day' mode
      SkyDome1->Bands->Items[1]->StopColor->Color = clrNavy;
      SkyDome1->Bands->Items[1]->StartColor->Color = clrBlue;
      SkyDome1->Bands->Items[0]->StopColor->Color = clrBlue;
      SkyDome1->Bands->Items[0]->StartColor->Color = clrWhite;
	  SkyDome1->Stars->Clear();
	  GLSceneViewer1->Buffer->BackgroundColor = clWhite;
	  fe = GLSceneViewer1->Buffer->FogEnvironment;
	  fe->FogColor->AsWinColor = clWhite;
	  fe->FogStart = -fe->FogStart;

	  GLSceneViewer1->Buffer->FogEnvironment->FogStart = 0;
	  SPMoon->Visible = False;
	  SPSun->Visible = True;
	}
	break;
  case 't':
	if(SkyDome1->Options.Contains(sdoTwinkle))
	  SkyDome1->Options = SkyDome1->Options << sdoTwinkle;
	else
	  SkyDome1->Options = SkyDome1->Options >> sdoTwinkle;
	break;
  case 'l':	GLLensFlare->Visible = (!GLLensFlare->Visible) && SPSun->Visible;
	break;
  case  '1' :
	elSphere = (TGLODEElementSphere *) dyn->AddNewElement(__classid(TGLODEElementSphere));
  break;
  case  '2' :
	elBox = (TGLODEElementBox *) dyn->AddNewElement(__classid(TGLODEElementBox));
  break;
  case  '3' :
	elCapsule = (TGLODEElementCapsule *) dyn->AddNewElement(__classid(TGLODEElementCapsule));
	break;
  case  '4' :
	elCylinder = (TGLODEElementCylinder *) dyn->AddNewElement(__classid(TGLODEElementCylinder));
	break;
  }
  dyn->Manager = GLODEManager1;

  Key = '\0';
}

//---------------------------------------------------------------------------
void __fastcall TForm1::GLSceneViewer1BeforeRender(TObject *Sender)
{
  GLLensFlare->PreRender((TGLSceneBuffer *) Sender);
}
//---------------------------------------------------------------------------
