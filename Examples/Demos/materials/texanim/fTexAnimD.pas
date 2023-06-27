unit fTexAnimD;

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
  Vcl.StdCtrls,

  GLS.Cadencer,
  GLS.Scene,
  GLS.Objects,
  GLS.Texture,
  GLS.SceneViewer,
  GLS.Material,
  GLS.Coordinates,

  GLS.BaseClasses;

type
  TFormTexAnim = class(TForm)
    GLScene1: TGLScene;
    GLSceneViewer1: TGLSceneViewer;
    GLMaterialLibrary1: TGLMaterialLibrary;
    GLCamera1: TGLCamera;
    Cube1: TGLCube;
    GLLightSource1: TGLLightSource;
    GLCadencer1: TGLCadencer;
    Timer1: TTimer;
    Panel1: TPanel;
    Button1: TButton;
    CBAnimate: TCheckBox;
    LabelFPS: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure GLCadencer1Progress(Sender: TObject;
      const deltaTime, newTime: Double);
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  public
    timeToNextFrame: Double;
  end;

var
  FormTexAnim: TFormTexAnim;

implementation

{$R *.DFM}

procedure TFormTexAnim.Button1Click(Sender: TObject);
var
  i: Integer;
  bmp: TBitmap;
begin
  // We generate a handful of bitmaps from scratch
  // you could also load them from a set of files, extract from an AVI etc.
  for i := 0 to 9 do
  begin
    bmp := TBitmap.Create;
    bmp.PixelFormat := pf24bit;
    bmp.Width := 60;
    bmp.Height := 60;
    bmp.Canvas.Font.Name := 'Arial';
    bmp.Canvas.Font.Height := 56;
    bmp.Canvas.TextOut(15, 5, IntToStr(i));
    GLMaterialLibrary1.AddTextureMaterial('IMG' + IntToStr(i), bmp);
    bmp.Free;
  end;
  // Initialize our loop
  Cube1.Material.MaterialLibrary := GLMaterialLibrary1;
  Cube1.Material.LibMaterialName := 'IMG0';
  GLMaterialLibrary1.Tag := 0;
  // GUI update
  CBAnimate.Enabled := True;
  Button1.Enabled := False;
end;

procedure TFormTexAnim.GLCadencer1Progress(Sender: TObject;
  const deltaTime, newTime: Double);
begin
  // cube turns slowly
  Cube1.Turn(deltaTime * 3);
  // cycle textures
  if CBAnimate.Checked then
  begin
    // coutdown to next frame
    timeToNextFrame := timeToNextFrame - deltaTime;
    // if it's time for the next frame
    if timeToNextFrame < 0 then
    begin
      // first, update frame counter (the Tag property in our sample)
      // (such a loop is a little overkill, yeah)
      while timeToNextFrame < 0 do
      begin
        timeToNextFrame := timeToNextFrame + 0.2;
        GLMaterialLibrary1.Tag := (GLMaterialLibrary1.Tag + 1) mod 10;
      end;
      // then, we update the material reference
      Cube1.Material.LibMaterialName := 'IMG' +
        IntToStr(GLMaterialLibrary1.Tag);
    end;
  end;
end;

procedure TFormTexAnim.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // stop animation
  CBAnimate.Checked := False;
end;

procedure TFormTexAnim.Timer1Timer(Sender: TObject);
begin
  // standard FPS
  LabelFPS.Caption := Format('%.1f FPS', [GLSceneViewer1.FramesPerSecond]);
  GLSceneViewer1.ResetPerformanceMonitor;
end;

end.
