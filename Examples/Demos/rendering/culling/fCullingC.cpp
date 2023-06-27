#include <vcl.h>
#pragma hdrstop

#include "fCullingC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.FileMD2"
#pragma link "GLS.SimpleNavigation"
#pragma resource "*.dfm"
TForm1* Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner) : TForm(Owner)
{
    int i, j;
    TGLSphere* newSphere;
    TGLActor* newActor;

    TFileName Path = GetCurrentAssetPath();
    SetCurrentDir(Path + "\\modelext");
	// Actors are used as standalone, med-polycount objects
	// that aren't T&L friendly (all geometry must be sent to
	// the hardware at each frame)
	ACReference->LoadFromFile("waste.md2");
	for (i = -3; i < 3; i++)
		for (j = -3; j < 3; j++) {
			newActor = (TGLActor*)DCActors->AddNewChild(__classid(TGLActor));
			newActor->Assign(ACReference);
			newActor->Position->SetPoint(i * 10, 0, j * 10);
			newActor->CurrentFrame = (i + 2) + (j + 2) * 5;
		}
    GLMaterialLibrary->Materials->Items[0]
        ->Material->Texture->Image->LoadFromFile("waste.jpg");
    // Spheres are used as standalone, high-polycount objects
    // that are highly T&L friendly
    for (i = -4; i < 4; i++)
        for (j = -4; j < 4; j++) {
            newSphere =
                (TGLSphere*)DCSpheres->AddNewChild(__classid(TGLSphere));
            newSphere->Position->SetPoint(i * 5, 0, j * 5);
            newSphere->Slices = 32;
            newSphere->Stacks = 32;
		}
	ACReference->Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::RBSpheresClick(TObject* Sender)
{
    DCSpheres->Visible = RBSpheres->Checked;
    DCActors->Visible = RBActors->Checked;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::GLCadencerProgress(
    TObject* Sender, const double deltaTime, const double newTime)
{
    Viewer->Invalidate();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject* Sender)
{
    Viewer->ResetPerformanceMonitor();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RBNoneClick(TObject* Sender)
{
    if (RBObject->Checked)
        GLScene->VisibilityCulling = vcObjectBased;
    else if (RBHierarchical->Checked)
        GLScene->VisibilityCulling = vcHierarchical;
    else
        GLScene->VisibilityCulling = vcNone;
}
//---------------------------------------------------------------------------

