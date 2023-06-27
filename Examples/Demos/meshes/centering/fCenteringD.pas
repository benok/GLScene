unit fCenteringD;

interface

uses
  Winapi.OpenGL,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,

  GLS.Scene,
  GLS.VectorFileObjects,
  GLS.Objects,
  GLS.SceneViewer,
  GLS.File3DS,
  GLS.Coordinates,
  GLS.BaseClasses,
  GLS.Utils;

type
  TFormCentering = class(TForm)
    GLSceneViewer1: TGLSceneViewer;
    GLScene1: TGLScene;
    GLCamera1: TGLCamera;
    DummyCube1: TGLDummyCube;
    DummyCube2: TGLDummyCube;
    DummyCube3: TGLDummyCube;
    FreeForm1: TGLFreeForm;
    FreeForm2: TGLFreeForm;
    FreeForm3: TGLFreeForm;
    GLLightSource1: TGLLightSource;
    DCCamera: TGLDummyCube;
    TrackBar1: TTrackBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
     
  public
     
  end;

var
  FormCentering: TFormCentering;

implementation

{$R *.DFM}

procedure TFormCentering.FormCreate(Sender: TObject);
begin
   const cFileName = 'polyhedron.3ds';
   var Path: TFileName := GetCurrentAssetPath();
   SetCurrentDir(Path  + '\model');
   // left one
   FreeForm3.AutoCentering:=[macCenterX, macCenterZ];
   FreeForm3.LoadFromFile(cFileName);
   // central one
   FreeForm2.AutoCentering:=[macCenterY];
   FreeForm2.LoadFromFile(cFileName);
   // right one
   FreeForm1.AutoCentering:=[macCenterX, macCenterY, macCenterZ];
   FreeForm1.LoadFromFile(cFileName);
end;

procedure TFormCentering.TrackBar1Change(Sender: TObject);
begin
   DCCamera.PitchAngle:=TrackBar1.Position;
end;

end.
