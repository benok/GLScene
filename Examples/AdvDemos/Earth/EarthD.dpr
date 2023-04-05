(*
  "Earth"
   See accompanying Readme.txt for user instructions.
   The atmospheric effect is rendered in GLDirectOpenGL1Render, which essentially
   renders a disk, with color of the vertices computed via ray-tracing. Not that
   the tesselation of the disk has been hand-optimized so as to reduce CPU use
   while retaining quality. On anything >1 GHz, the rendering is fill-rate
   limited on a GeForce 4 Ti 4200.
   Stars support is built into the TGLSkyDome, but constellations are rendered
   via a TGLLines, which is filled in the LoadConstellationLines method.
*)
program EarthD;

uses
  Forms,
  fEarthD in 'fEarthD.pas' {FormEarth},
  GLS.SolarSystem in 'GLS.SolarSystem.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormEarth, FormEarth);
  Application.Run;
end.
