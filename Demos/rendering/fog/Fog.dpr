{ demo showing the use of fog in GLScene
   20/07/03 - php - started
 }
program Fog;

uses
  Forms,
  fFog in 'fFog.pas' {FormFog};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormFog, FormFog);
  Application.Run;
end.
