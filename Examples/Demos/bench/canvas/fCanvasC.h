//---------------------------------------------------------------------------

#ifndef fCanvasCH
#define fCanvasCH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <System.Uitypes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Graphics.hpp>

#include "GLS.Coordinates.hpp"
#include "GLS.Scene.hpp"
#include "GLS.SceneViewer.hpp"
#include "GLS.Canvas.hpp"
#include "GLS.RenderContextInfo.hpp"
#include "GLS.BitmapFont.hpp"
#include "GLS.WindowsFont.hpp"
#include "GLS.BaseClasses.hpp"

//---------------------------------------------------------------------------
class TFormCanvas : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel1;
	TGLSceneViewer *GLSceneViewer;
	TGLScene *GLScene1;
	TGLDirectOpenGL *GLDirectOpenGL1;
	TGLCamera *GLCamera1;
	TGLWindowsBitmapFont *WindowsBitmapFont;
	TPanel *Panel1;
	TButton *BULines;
	TButton *BUEllipses;
	TButton *BURects;
	TButton *BUArc;
	TButton *BUPoints;
	TButton *BUTextOut;
	TRadioButton *RBPenWidth1;
	TRadioButton *RBPenWidth2;
	TLabel *LAGLCanvas;
	TLabel *LAGDI;
	TPaintBox *PaintBox;
	void __fastcall BULinesClick(TObject *Sender);
	void __fastcall BUEllipsesClick(TObject *Sender);
	void __fastcall BUArcClick(TObject *Sender);
	void __fastcall BURectsClick(TObject *Sender);
	void __fastcall BUPointsClick(TObject *Sender);
	void __fastcall BUTextOutClick(TObject *Sender);
	void __fastcall GLDirectOpenGL1Render(TObject *Sender, TGLRenderContextInfo &rci);

private:	// User declarations
	void PaintTheBox();
	void Bench();

public:		// User declarations
	__fastcall TFormCanvas(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormCanvas *FormCanvas;
//---------------------------------------------------------------------------
#endif
