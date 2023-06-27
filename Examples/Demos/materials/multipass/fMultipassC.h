//---------------------------------------------------------------------------

#ifndef fMultipassCH
#define fMultipassCH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "GLS.GeomObjects.hpp"
#include "GLS.Objects.hpp"
#include "GLS.Scene.hpp"
#include "GLS.Texture.hpp"
#include "GLS.SceneViewer.hpp"
#include "GLS.BaseClasses.hpp"
#include "GLS.Coordinates.hpp"

#include "GLS.Material.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
  __published: // IDE-managed Components
    TGLSceneViewer* GLSceneViewer1;
    TButton* BUBind;
    TGLScene* GLScene1;
    TGLLightSource* GLLightSource1;
    TGLTorus* Torus1;
    TGLSphere* Sphere1;
    TGLAnnulus* GLAnnulus1;
    TGLAnnulus* GLAnnulus2;
    TGLCube* GLCube1;
    TGLSphere* GLSphere1;
    TGLCamera* GLCamera1;
    TGLMaterialLibrary* GLMaterialLibrary1;
    void __fastcall BUBindClick(TObject* Sender);
    void __fastcall GLSceneViewer1MouseDown(
        TObject* Sender, TMouseButton Button, TShiftState Shift, int X, int Y);
    void __fastcall GLSceneViewer1MouseMove(
        TObject* Sender, TShiftState Shift, int X, int Y);
  private: // User declarations
    int mx, my;
  public: // User declarations
    __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
class THiddenLineShader : public TGLShader
{
  private:
  public:
    __fastcall virtual THiddenLineShader(TComponent* AOwner);
    __fastcall virtual ~THiddenLineShader(void);

    TGLColorVector BackgroundColor, LineColor;
    int PassCount;

    void __fastcall DoApply(TGLRenderContextInfo &rci, System::TObject* Sender);
    bool __fastcall DoUnApply(TGLRenderContextInfo &rci);
};

class TOutLineShader : public TGLShader
{
  private:
  public:
    __fastcall virtual TOutLineShader(TComponent* AOwner);
    __fastcall virtual ~TOutLineShader(void);

    TGLColorVector BackgroundColor, LineColor;
    bool OutlineSmooth, Lighting;
    float OutlineWidth, OldlineWidth;
    int PassCount;

    void __fastcall DoApply(TGLRenderContextInfo &rci, System::TObject* Sender);
    bool __fastcall DoUnApply(TGLRenderContextInfo &rci);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1* Form1;
//---------------------------------------------------------------------------
#endif

