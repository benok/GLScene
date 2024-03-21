//---------------------------------------------------------------------------

#ifndef fHierarchCH
#define fHierarchCH
//---------------------------------------------------------------------------
#include <vcl.h>
#include <tchar.h>
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "GLS.BaseClasses.hpp"
#include "GLS.Cadencer.hpp"
#include "GLS.Coordinates.hpp"

#include "GLS.Objects.hpp"
#include "GLS.Scene.hpp"
#include "GLS.SceneViewer.hpp"
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TFormHierarch : public TForm
{
__published:	// IDE-managed Components
	TGLSceneViewer *GLSceneViewer1;
	TTrackBar *TrackBar;
	TCheckBox *CBPlay;
	TGLScene *GLScene1;
	TGLCube *Cube1;
	TGLDummyCube *DummyCube1;
	TGLCube *Cube2;
	TGLDummyCube *DummyCube2;
	TGLCube *Cube3;
	TGLLightSource *GLLightSource1;
	TGLCamera *GLCamera1;
	TGLCadencer *GLCadencer1;
	void __fastcall TrackBarChange(TObject *Sender);
	void __fastcall GLCadencer1Progress(TObject *Sender, const double deltaTime, const double newTime);
	void __fastcall FormResize(TObject *Sender);
	void __fastcall FormCloseQuery(TObject *Sender, bool &CanClose);

private:	// User declarations
public:		// User declarations
	__fastcall TFormHierarch(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormHierarch *FormHierarch;
//---------------------------------------------------------------------------
#endif
