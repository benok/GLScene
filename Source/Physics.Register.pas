//
// The graphics rendering engine GLScene http://glscene.org
//
unit Physics.Register;

(* DesignTime registration code for the Physics Managers *)

interface

uses
  System.Classes,
  Physics.ODEManager,
  Physics.SPIManager;

procedure Register;

// ------------------------------------------------------------------
implementation
// ------------------------------------------------------------------

procedure Register;
begin
  RegisterClasses([TGLODEManager, TGLODEJointList,  TGLODEJoints, TGLODEElements, TGLSPIManager]);
  RegisterComponents('GLScene Physics Managers',[TGLODEManager,TGLODEJointList, TGLSPIManager]);
end;

end.
