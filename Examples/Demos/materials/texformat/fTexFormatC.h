//---------------------------------------------------------------------------

#ifndef fTexFormatCH
#define fTexFormatCH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "GLS.BaseClasses.hpp"
#include "GLS.Coordinates.hpp"

#include "GLS.HUDObjects.hpp"
#include "GLS.Objects.hpp"
#include "GLS.Scene.hpp"
#include "GLS.SceneViewer.hpp"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFormFormats : public TForm
{
__published:	// IDE-managed Components
	TGLSceneViewer *GLSceneViewer1;
	TPanel *Panel1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *LAPicSize;
	TLabel *Label5;
	TLabel *LAUsedMemory;
	TLabel *LARGB32;
	TLabel *LACompression;
	TComboBox *CBFormat;
	TComboBox *CBCompression;
	TComboBox *CBImage;
	TRadioButton *RBDefault;
	TRadioButton *RBDouble;
	TRadioButton *RBQuad;
	TGLScene *GLScene1;
	TGLHUDSprite *HUDSprite1;
	TGLCamera *GLCamera1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall CBImageChange(TObject *Sender);
	void __fastcall FormResize(TObject *Sender);
	void __fastcall GLSceneViewer1AfterRender(TObject *Sender);
	void __fastcall RBDefaultClick(TObject *Sender);
	void __fastcall RBDoubleClick(TObject *Sender);
	void __fastcall RBQuadClick(TObject *Sender);
	void __fastcall CBCompressionChange(TObject *Sender);
	void __fastcall CBFormatChange(TObject *Sender);
private:	// User declarations
	TFileName PathToData;
public:		// User declarations
	__fastcall TFormFormats(TComponent* Owner);
    bool newSelection;
};
//---------------------------------------------------------------------------
extern PACKAGE TFormFormats *FormFormats;
//---------------------------------------------------------------------------
#endif
