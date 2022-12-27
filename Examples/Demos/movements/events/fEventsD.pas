unit fEventsD;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,

  GLS.Scene,
  GLS.Objects,
  GLS.Texture,
  GLS.Cadencer,
  GLS.SceneViewer,
  GLS.TimeEventsMgr,

  GLS.Coordinates,
  GLS.BaseClasses;

type
  TFormEvents = class(TForm)
    GLSceneViewer1: TGLSceneViewer;
    GLScene1: TGLScene;
    Camera1: TGLCamera;
    Cube1: TGLCube;
    Timer1: TTimer;
    GLCadencer1: TGLCadencer;
    GLTimeEventsMGR1: TGLTimeEventsMGR;
    Cube2: TGLCube;
    DummyCube1: TGLDummyCube;
    Cube3: TGLCube;
    procedure Timer1Timer(Sender: TObject);
    procedure GLTimeEventsMGR1Events0Event(event: TTimeEvent);
    procedure GLTimeEventsMGR1Events1Event(event: TTimeEvent);
    procedure GLTimeEventsMGR1Events2Event(event: TTimeEvent);
    procedure GLTimeEventsMGR1Events3Event(event: TTimeEvent);
    procedure GLTimeEventsMGR1Events4Event(event: TTimeEvent);
    procedure GLTimeEventsMGR1Events5Event(event: TTimeEvent);
  end;

var
  FormEvents: TFormEvents;

implementation

{$R *.dfm}

procedure TFormEvents.Timer1Timer(Sender: TObject);
begin
  Caption := 'Events ' + Format('  TIME: %.4f', [GLCadencer1.CurrentTime]);
  GLSceneViewer1.ResetPerformanceMonitor;
end;

procedure TFormEvents.GLTimeEventsMGR1Events0Event(event: TTimeEvent);
begin
  Cube1.RollAngle := event.ElapsedTime * 180 / 3;
end;

procedure TFormEvents.GLTimeEventsMGR1Events1Event(event: TTimeEvent);
begin
  Cube2.RollAngle := event.TickCount / 499 * 180;
end;

procedure TFormEvents.GLTimeEventsMGR1Events2Event(event: TTimeEvent);
begin
  Cube3.RollAngle := 90;
end;

procedure TFormEvents.GLTimeEventsMGR1Events3Event(event: TTimeEvent);
begin
  Cube1.RollAngle := event.TickCount / 4 * 90;
end;

procedure TFormEvents.GLTimeEventsMGR1Events4Event(event: TTimeEvent);
begin
  Cube2.RollAngle := event.TickCount / 20 * 90;
end;

procedure TFormEvents.GLTimeEventsMGR1Events5Event(event: TTimeEvent);
begin
  Cube3.RollAngle := event.TickCount / 200 * 90;
end;

end.
