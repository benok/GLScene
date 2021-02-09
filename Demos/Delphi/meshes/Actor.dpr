{: This sample illustrates basic actor use.

	I'm using the GLScene built-in Actor Load from File, Load Texture,
   add one weapon, and animate both. The sensation is how both are one.
   Both weapon and actor are just TGLActor objects, the role is different.
   In the sample, it is possible change the animation of the actor and
   enabled/disable frame interpolation (smooth movement).

   An actor is basicly a set of frames (or poses), which are arranged in
   animations, for instance to animate a salute, we have a first frame with
   the hand down, in the second it moved up, etc. Each animation consists
   series of frame defined by a name, a start frame and an end frame.
   TGLActor take cares of animation (through progression events generated by
   a cadencer for instance) and generates intermediate frames if interpolation
   is enabled. In this sample only "Loop" mode is used, but note that there
   are other modes ("bounce", "playonce"...).

   Performance note : with a small window and a fast 3D board, the FPS goes so
   high that it becomes limited by the... animation frame counter ;)

   The stuff used for this sample is free, and information about this is in
   the waste.txt text file (see "media" directory).

   Special Thanks to Eric Grange an Roger Cao for your help
}
program Actor;

uses
  Forms,
  ActorFm in 'ActorFm.pas' {FormActor};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormActor, FormActor);
  Application.Run;
end.
