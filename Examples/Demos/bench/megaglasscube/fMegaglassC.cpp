//---------------------------------------------------------------------------

#include <vcl.h>
#include <tchar.h>
#pragma hdrstop

#include "fMegaglassC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.SimpleNavigation"
#pragma link "GLS.SceneViewer"
#pragma resource "*.dfm"
TFormMegaglasscube *FormMegaglasscube;

const int
  cSize = 10;

//---------------------------------------------------------------------------
__fastcall TFormMegaglasscube::TFormMegaglasscube(TComponent* Owner)
	: TForm(Owner)
{
  int x, y, z;
  TGLCube *cube;
  float factor, cubeSize;

  // bench only creation and 1st render (with lists builds, etc...)
  factor = 70 / (cSize * 2 + 1);
  cubeSize = 0.4 * factor;
  for (x = -cSize; x< cSize; x++)
	for (y = -cSize; y< cSize; y++)
	  for (z = -cSize; z< cSize; z++)
	  {
		cube = (TGLCube *) (DummyCube1->AddNewChild(__classid(TGLCube)));
		cube->Position->AsVector = PointMake(factor * x, factor * y, factor * z);
		cube->CubeWidth = cubeSize;
		cube->CubeHeight = cubeSize;
		cube->CubeDepth = cubeSize;
		cube->Material->BlendingMode = bmTransparency;
		cube->Material->FrontProperties->Diffuse->Color =
		  VectorLerp(clrBlue, clrWhite, (float)(x * x + y * y + z * z)/(cSize * cSize * 3));
		cube->Material->FrontProperties->Diffuse->Alpha = 0.5;
	  }
}
//---------------------------------------------------------------------------

void __fastcall TFormMegaglasscube::GLCadencer1Progress(TObject *Sender, const double deltaTime,
		  const double newTime)
{
  DummyCube1->TurnAngle = 90 * newTime; // 90� per second
}
//---------------------------------------------------------------------------
