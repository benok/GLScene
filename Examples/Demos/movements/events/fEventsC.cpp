//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fEventsC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Cadencer"
#pragma link "GLS.Coordinates"

#pragma link "GLS.Objects"
#pragma link "GLS.Scene"
#pragma link "GLS.TimeEventsMgr"
#pragma link "GLS.SceneViewer"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
	Caption = "Events" + Format("  Time: %.4f",
	  ARRAYOFCONST ((GLCadencer1->CurrentTime)));
	GLSceneViewer1->ResetPerformanceMonitor();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLTimeEventsMGR1Events0Event(TTimeEvent *event)
{
   Cube1->RollAngle = (float)event->ElapsedTime*180/3;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLTimeEventsMGR1Events1Event(TTimeEvent *event)
{
   Cube2->RollAngle = (float)event->TickCount/499*180;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLTimeEventsMGR1Events2Event(TTimeEvent *event)
{
  Cube3->RollAngle = 90;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLTimeEventsMGR1Events3Event(TTimeEvent *event)
{
 Cube1->RollAngle = (float)event->TickCount/4*90;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLTimeEventsMGR1Events4Event(TTimeEvent *event)
{
 Cube2->RollAngle = (float)event->TickCount/20*90;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::GLTimeEventsMGR1Events5Event(TTimeEvent *event)
{
  Cube3->RollAngle = (float)event->TickCount/200*90;
}
//---------------------------------------------------------------------------
