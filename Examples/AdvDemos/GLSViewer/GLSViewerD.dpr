program GLSViewerD;

uses
  Forms,
  fGLForm in 'Source\fGLForm.pas' {GLForm},
  fGLDialog in 'Source\fGLDialog.pas' {GLDialog},
  fGLSViewer in 'Source\fGLSViewer.pas' {FormGLSViewer},
  uGlobals in 'Source\uGlobals.pas',
  uSettings in 'Source\uSettings.pas',
  dImages in 'Source\dImages.pas' {dmGLSViewer: TDataModule},
  fGLAbout in 'Source\fGLAbout.pas' {GLAbout},
  fGLOptions in 'Source\fGLOptions.pas' {GLOptions},
  gnugettext in 'Locale\gnugettext.pas',
  dDialogs in 'Source\dDialogs.pas' {dmDialogs: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'GLSViewer';
  Application.CreateForm(TFormGLSViewer, FormGLSViewer);
  Application.CreateForm(TdmGLSViewer, dmGLSViewer);
  Application.CreateForm(TdmDialogs, dmDialogs);
  Application.Run;
end.
