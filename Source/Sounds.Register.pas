//
// The graphics engine GLScene https://github.com/glscene
//
unit Sounds.Register;

(* Design time registration code for the Sounds *)

interface

uses
  System.Classes,

  Sounds.BASS,
  Sounds.FMOD,
  Sounds.OpenAL,
  Sounds.WaveOut;

procedure Register;

// ------------------------------------------------------------------
implementation
// ------------------------------------------------------------------

procedure Register;
begin
  RegisterComponents('GLScene',[TGLSMBASS,TGLSMFMOD,TGLSMOpenAL,TGLSMWaveOut]);
end;

end.
