//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fBlurC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.Material"
#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
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
  TFileName Path = GetCurrentAssetPath();
  SetCurrentDir(Path  + "\\texture");
  GLMaterialLibrary1->TexturePaths = GetCurrentDir();
  // Add GLS.Blur to scene
  B = new TGLBlur(this);
  GLCube1->AddChild(B);
  B->TargetObject = GLCube1;
  B->RenderWidth = 256;
  B->RenderHeight = 256;
  // Load texture for objects
  GLMaterialLibrary1->Materials->Items[0]->Material->Texture->Image->LoadFromFile("marbletiles.jpg");
  ComboBox1->ItemIndex = 2;
  ComboBox1Change(this);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox1Change(TObject *Sender)
{
  B->Preset = TGLBlurPreset(ComboBox1->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::GLCadencer1Progress(TObject *Sender, const double deltaTime,
		  const double newTime)
{
  GLCube1->Turn(deltaTime * 10);
  GLSphere1->Turn(deltaTime * 50);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox2Change(TObject *Sender)
{
  B->RenderWidth = StrToInt(ComboBox2->Items->Strings[ComboBox2->ItemIndex]);
  B->RenderHeight = B->RenderWidth;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
  LabelFPS->Caption = FloatToStr(RoundInt((float)GLSceneViewer1->FramesPerSecond()))+ " FPS";
  GLSceneViewer1->ResetPerformanceMonitor();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::GLSceneViewer1MouseMove(TObject *Sender, TShiftState Shift,
          int X, int Y)
{
  if (Shift.Contains(ssLeft))
	GLCamera1->MoveAroundTarget(0.2 * (oldy - Y), 0.2 * (oldx - X));
  oldx = X;
  oldy = Y;

}
//---------------------------------------------------------------------------

