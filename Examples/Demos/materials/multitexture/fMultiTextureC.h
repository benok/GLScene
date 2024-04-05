//---------------------------------------------------------------------------

#ifndef fMultiTextureCH
#define fMultiTextureCH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ExtDlgs.hpp>
#include "GLS.BaseClasses.hpp"
#include "GLS.Coordinates.hpp"

#include "GLS.Material.hpp"
#include "GLS.Objects.hpp"
#include "GLS.Scene.hpp"
#include "GLS.SceneViewer.hpp"
#include "Jpeg.hpp"
//---------------------------------------------------------------------------
class TFormMultiTexture : public TForm
{
__published:	// IDE-managed Components
	TImage *Image1;
	TImage *Image2;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TGLSceneViewer *GLSceneViewer1;
	TTrackBar *TrackBar1;
	TCheckBox *CBClampTex2;
	TGLScene *GLScene1;
	TGLPlane *Plane1;
	TGLCamera *GLCamera1;
	TGLMaterialLibrary *GLMaterialLibrary1;
	TOpenPictureDialog *OpenPictureDialog1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall Image1Click(TObject *Sender);
	void __fastcall Image2Click(TObject *Sender);
	void __fastcall TrackBar1Change(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMultiTexture(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormMultiTexture *FormMultiTexture;
//---------------------------------------------------------------------------
#endif
