//---------------------------------------------------------------------------

#include <vcl.h>
#include <tchar.h>

#pragma hdrstop

#include "fCaterpillarC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.Material"
#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.SimpleNavigation"
#pragma link "GLS.SceneViewer"
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
  TFileName Path = GetCurrentAssetPath() + "\\texture\\";
  GLMaterialLibrary1->TexturePaths = GetCurrentDir();

  Sprite1->Material->Texture->Image->LoadFromFile(Path + "flare1.bmp");
  GLMaterialLibrary1->Materials->Items[0]->Material->Texture->Image->LoadFromFile(Path + "flare1.bmp");
  // New sprites are created by duplicating the template "sprite2"
  for (int i = 1; i < 11; i++) {
		spr = (TGLSprite*)GLDummyCube1->AddNewChild(__classid(TGLSprite));
		spr->Assign(Sprite2);
  }

}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLCadencer1Progress(TObject *Sender, const double deltaTime,
		  const double newTime)
{
	int i;
	double a, aBase;
   // angular reference : 90� per second <=> 4 second per revolution
	aBase = 90*newTime;
   // "pulse" the star
	a = DegToRad(aBase);
	Sprite1->SetSquareSize(4+0.2*cos(3.5*a));
	// rotate the sprites around the yellow "star"
	for (i = 0; i < GLDummyCube1->Count-1; i++) {
		a = DegToRad(aBase+i*8);
		 // rotation movement
		GLDummyCube1->Children[i]->Position->X = 4*cos(a);
		GLDummyCube1->Children[i]->Position->Z = 4*sin(a);
		 // ondulation
		GLDummyCube1->Children[i]->Position->Y = 2*cos(2.1*a);
		// sprite size change
		Sprite1->SetSquareSize(2+cos(3*a));
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormResize(TObject *Sender)
{
   // This lines take cares of auto-zooming.
   // magic numbers explanation :
   //  333 is a form width where things looks good when focal length is 50,
   //  ie. when form width is 333, uses 50 as focal length,
   //      when form is 666, uses 100, etc...
  GLCamera1->FocalLength = Width*50/333;

}
//---------------------------------------------------------------------------

