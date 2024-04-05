//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fHierarchC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.SceneViewer"
#pragma resource "*.dfm"
TFormHierarch* FormHierarch;
//---------------------------------------------------------------------------
__fastcall TFormHierarch::TFormHierarch(TComponent* Owner) : TForm(Owner) {}
//---------------------------------------------------------------------------
void __fastcall TFormHierarch::TrackBarChange(TObject* Sender)
{
    int t;

    t = TrackBar->Position;
    // the "sun" spins slowly
    Cube1->TurnAngle = t / 4;
    // "earth" rotates around the sun and spins
    DummyCube1->TurnAngle = -t;
    Cube2->TurnAngle = t * 2;
    // "moon" rotates around earth and spins
    DummyCube2->RollAngle = 3 * t;
    Cube3->TurnAngle = 4 * t;
}
//---------------------------------------------------------------------------
void __fastcall TFormHierarch::GLCadencer1Progress(
    TObject* Sender, const double deltaTime, const double newTime)
{
    if (CBPlay->Checked && Visible)
        // simulate a user action on the trackbar...
        TrackBar->Position = ((TrackBar->Position + 1) % 360);
}
//---------------------------------------------------------------------------

void __fastcall TFormHierarch::FormResize(TObject* Sender)
{
    GLSceneViewer1->ResetPerformanceMonitor();
}
//---------------------------------------------------------------------------
void __fastcall TFormHierarch::FormCloseQuery(TObject* Sender, bool &CanClose)
{
    // We need to stop playing here :
    // 	since the timer is asynchronous, if we don't stop play,
    // 	it may get triggered during the form's destruction
    CBPlay->Checked = false;
}
//---------------------------------------------------------------------------

