//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fActorC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.GeomObjects"
#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.VectorFileObjects"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.FileMD2"
#pragma resource "*.dfm"
TFormActor *FormActor;
int mdx, mdy;
//---------------------------------------------------------------------------
__fastcall TFormActor::TFormActor(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::FormCreate(TObject *Sender)
{
   TFileName Path = GetCurrentAssetPath();
   SetCurrentDir(Path  + "\\texture");
   // Load Texture of ground disk for Persistant Image
   Disk1->Material->Texture->Image->LoadFromFile("clover.jpg");
   Disk1->Material->Texture->Disabled = false;

   // Loading Actor with textures and aninations
   SetCurrentDir(Path  + "\\modelext");
   Actor1->LoadFromFile("waste.md2"); // and to load a weapon later
   Actor1->Material->Texture->Image->LoadFromFile("waste.jpg");
   Actor2->Material->Texture->Image->LoadFromFile("WeaponWaste.jpg");

   /*
	 Load Quake2 animations defaults, for "waste.md2", this is not required
	 since the author did not renamed the frames, and thus, GLScene can
	 recover them from the .MD2, but other authors just made a mess...
	 Loading the default animations takes care of that
   */
   Actor1->Animations->LoadFromFile("Quake2Animations.aaf");
   // Scale Actor for put in the Scene
   Actor1->Scale->SetVector(0.04, 0.04, 0.04, 0);
   // Send animation names to the combo, to allow user selection
   Actor1->Animations->SetToStrings(CBAnimations->Items);
   // Force state to stand (first in list)
   CBAnimations->ItemIndex = 0;
   CBAnimationsChange(this);    // Sender may be used
 }

//---------------------------------------------------------------------------
void __fastcall TFormActor::SBPlayClick(TObject *Sender)
{
   // start playing
   Actor1->AnimationMode = aamLoop;
   Actor2->AnimationMode = aamLoop;

   // update buttons
   SBPlay->Enabled = False;
   SBStop->Enabled = True;
   SBFrameToFrame->Enabled = False;
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::SBStopClick(TObject *Sender)
{
   // stop playing
   Actor1->AnimationMode = aamNone;
   Actor2->AnimationMode = aamNone;

   // update buttons
   SBPlay->Enabled = True;
   SBStop->Enabled = False;
   SBFrameToFrame->Enabled = True;
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::CBAnimationsChange(TObject *Sender)
{
   // Change animation
   Actor1->SwitchToAnimation(CBAnimations->Text, True);
   /*
	Normally actors for Quake II Model have one number of frames
	for all states 198 for actors and 172 for weapon,
	frames 173 to 198 are for death
	I use this for Hide and show weapon.
   */
   Actor2->Visible = (Actor1->NextFrameIndex()<173);
   if (Actor2->Visible)
	  Actor2->Synchronize(Actor1);
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::SBFrameToFrameClick(TObject *Sender)
{
 // Animate Frame to Frame
 Actor1->NextFrame();
 Actor2->NextFrame();
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::BBLoadWeaponClick(TObject *Sender)
{
  // Load weapon model and texture
   Actor2->LoadFromFile("WeaponWaste.md2");

   // Get animations frames from the main actor
   Actor2->Animations->Assign(Actor1->Animations);

   // Synch both actors
   Actor2->Synchronize(Actor1);
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::GLSceneViewer1MouseDown(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
 // store mouse coordinates when a button went down
 mdx = X; mdy = Y;
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::Timer1Timer(TObject *Sender)
{
   LabelFPS->Caption = GLSceneViewer1->FramesPerSecond();
   GLSceneViewer1->ResetPerformanceMonitor();
}
//---------------------------------------------------------------------------
void __fastcall TFormActor::GLSceneViewer1MouseMove(TObject *Sender, TShiftState Shift,
		  int X, int Y)
{
   // (we're moving around the parent and target dummycube)
   if (Shift.Contains(ssLeft))
	  GLCamera1->MoveAroundTarget(mdy-Y, mdx-X);
	mdx = X; mdy = Y;
}
//---------------------------------------------------------------------------
