{:
  Shadow casting with GLzBuffer by Rene Lindsay.
}
program Shadows;

uses
  Forms,
  fShadows in 'fShadows.pas' {FormShadows};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormShadows, FormShadows);
  Application.Run;
end.
