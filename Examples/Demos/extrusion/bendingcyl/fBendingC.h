//---------------------------------------------------------------------------

#ifndef fBendingCH
#define fBendingCH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>

#include "GLS.BaseClasses.hpp"
#include "GLS.Cadencer.hpp"
#include "GLS.Coordinates.hpp"

#include "GLS.Extrusion.hpp"
#include "GLS.Objects.hpp"
#include "GLS.Scene.hpp"
#include "GLS.VectorGeometry.hpp"
#include "GLS.SceneViewer.hpp"
#include "GLS.Spline.hpp"

//---------------------------------------------------------------------------
class TFormBending : public TForm
{
__published:	// IDE-managed Components
	TGLSceneViewer *GLSceneViewer1;
	TCheckBox *CBSpline;
	TCheckBox *CBFat;
	TPanel *PanelFPS;
	TGLScene *GLScene1;
	TGLLightSource *GLLightSource1;
	TGLPipe *Pipe1;
	TGLDummyCube *DummyCube1;
	TGLCamera *GLCamera1;
	TGLCadencer *GLCadencer1;
	TTimer *Timer1;
	void __fastcall GLSceneViewer1MouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall GLSceneViewer1MouseMove(TObject *Sender, TShiftState Shift, int X,
          int Y);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall GLCadencer1Progress(TObject *Sender, const double deltaTime, const double newTime);
	void __fastcall CBSplineClick(TObject *Sender);


private:	// User declarations
	int mx, my;
public:		// User declarations
	__fastcall TFormBending(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormBending *FormBending;
//---------------------------------------------------------------------------
#endif
