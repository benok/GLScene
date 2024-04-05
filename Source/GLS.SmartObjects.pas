﻿//
// The graphics engine GLScene https://github.com/glscene
//
unit GLS.SmartObjects;

(*
  These objects have built-in properties and methods to support sound, vision,
  physics, and finding shortest paths through obstacle terrains. In addition,
  they have artificial intelligence to conduct dialogues and make
  independent decisions. The smart spatial objects are used to interact
  with other smart objects.

  The registered classes:
   [TGLSmartGerm, TGLSmartCells, TGLSmartSwarm, TGLSmartNet, TGLCyborg, TGLCyborgs]
*)

interface

{$I GLS.Scene.inc}

uses
  Winapi.OpenGL,
  Winapi.OpenGLext,
  System.Classes,
  System.SysUtils,
  System.Types,
  System.Math,
  VCL.Consts,

  GLS.OpenGLTokens,
  GLS.VectorGeometry,
  GLS.VectorTypes,
  GLS.VectorTypesExt,
  GLS.Strings,
  GLS.PipelineTransformation,

  GLS.Scene,
  GLS.VectorLists,
  GLS.PersistentClasses,
  GLS.Silhouette,
  GLS.Texture,
  GLS.Material,
  GLS.Mesh,
  GLS.Octree,
  GLS.GeometryBB,
  GLS.Objects,
  GLS.GeomObjects,
  GLS.ApplicationFileIO,
  GLS.Context,
  GLS.Color,
  GLS.Selection,
  GLS.RenderContextInfo,
  GLS.Coordinates,
  GLS.BaseClasses,
  GLS.VectorFileObjects,
  GLS.SoundManager,
  GLS.SoundFileObjects;


type

  TGLSmartSwarmMode = (isNone, isRandom, isTetra, isGrid);

  TGLCyborgReference = (crNone, crWeak, crStrong);
  TGLCyborgThinkMode = (ctmSelf, ctmSleep, ctmOutside, ctmZombie, ctmDeath);

  TGLCyborgOption = (coCollide, coContact, coJoin);
  TGLCyborgSenceOrgans = (csoVision, csoHearing, csoSmell, csoTouch, taste);

  TGLCyborgOptions = set of TGLCyborgOption;
  TGLCyborgThinks = class(TCollection);

  // A list of thinking periods for TGLCyborgThinkMode
  TGLCyborgThinksList = class(TGLPersistentObjectList);

const
  cDefaultCyborgOptions = [coCollide];

type
  (* The Cyborg class specialized as a smart actor with AI.
    The TGLCyborg  provides a quick interface to animated actors based on morph
    or skeleton frames, it is capable of performing frame interpolation and
    thinking blending (via TGLThinkingController components). *)
  TGLCyborg = class(TGLActor)
  private
    FBirthTime, FDeathTime: TDateTime;
    FReference: TGLCyborgReference;
    FThinkMode: TGLCyborgThinkMode;
    FControlers: TList;
    FInterval: Integer;
    FOptions: TGLCyborgOptions;
    FThinkings: TGLCyborgThinks;
  protected
    procedure SetReference(val: TGLCyborgReference);
    procedure SetThinking(const val: TGLCyborgThinkMode);
    function StoreThinking: Boolean;
    procedure SetOptions(const val: TGLCyborgOptions);
    procedure DoThink; virtual;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    procedure BuildList(var rci: TGLRenderContextInfo); override;
    procedure DoProgress(const progressTime: TGLProgressTimes); override;
    procedure LoadFromStream(const Filename: string; aStream: TStream); override;
    procedure SwitchToThinking(anThinking: TGLCyborgThinks; smooth: Boolean = False);
    function CurrentThinking: string;
    // Indicates whether the cyborg is currently thinking
    function IsThinking: Boolean;
  published
    // See TGLCyborgThinkMode.
    property ThinkingMode: TGLCyborgThinkMode read FThinkMode
	  write FThinkMode default ctmSelf;
    // Reference Frame Animation mode. Allows specifying if the model is primarily morph or skeleton based
    property SmartReference: TGLCyborgReference read FReference
      write FReference default crNone;

    // Interval between thinking frames, in milliseconds.
    property Interval: Integer read FInterval write FInterval;
    // Cyborg and thinking miscellanious options.
    property Options: TGLCyborgOptions read FOptions write SetOptions default cDefaultCyborgOptions;
    // Collection of thinking sequences.
    ///property Thinkings: TGLCyborgThinks read FThinkings write SetThinking stored StoreThinking;
  end;

  (*
     Synchronize self thinking with an other thinkers in the swarm
     Copies Ai/Current/End values,ThinkingMode and GridInterpolation.
     procedure Synchronize(IntelSwarm: TGLIntelSwarm);
   *)
  TGLSwartSwarm = class(TGLPoints)
  private
    FBirthTime, FDeathTime: TDateTime;
    FReference: TGLCyborgReference;
    FThinkMode: TGLSmartSwarmMode;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
  published
    property ThinkingMode: TGLSmartSwarmMode read FThinkMode;
  end;

var
  vGLSmartObjectsAllocate: Boolean = True;
  vGLSmartObjectsEnableByDefault: Boolean = True;

// ------------------------------------------------------------------
implementation
// ------------------------------------------------------------------

var
  vCyborgsFileFormat: TGLCyborgThinksList;
  vNextRenderGroupID: Integer = 1;


// ------------------------------------------------------------------
{ TGLCyborg }

procedure TGLCyborg.Assign(Source: TPersistent);
begin
  inherited;
//
end;

procedure TGLCyborg.BuildList(var rci: TGLRenderContextInfo);
begin
  inherited;
//
end;

constructor TGLCyborg.Create(aOwner: TComponent);
begin
  inherited;
//
end;

function TGLCyborg.CurrentThinking: string;
begin
//
end;

destructor TGLCyborg.Destroy;
begin
//
  inherited;
end;

procedure TGLCyborg.DoProgress(const progressTime: TGLProgressTimes);
begin
  inherited;
//
end;

procedure TGLCyborg.DoThink;
begin
//
end;

function TGLCyborg.IsThinking: Boolean;
begin
//
end;

procedure TGLCyborg.LoadFromStream(const Filename: string; aStream: TStream);
begin
  inherited;
//
end;

procedure TGLCyborg.SetOptions(const val: TGLCyborgOptions);
begin
//
end;

procedure TGLCyborg.SetReference(val: TGLCyborgReference);
begin
//
end;

procedure TGLCyborg.SetThinking(const val: TGLCyborgThinkMode);
begin
//
end;


function TGLCyborg.StoreThinking: Boolean;
begin
//
end;

procedure TGLCyborg.SwitchToThinking(anThinking: TGLCyborgThinks; smooth: Boolean);
begin
//
end;


// ------------------------------------------------------------------
{ TGLSwartSwarm }

procedure TGLSwartSwarm.Assign(Source: TPersistent);
begin
  inherited;
  //
end;

constructor TGLSwartSwarm.Create(aOwner: TComponent);
begin
  inherited;
  //
end;

destructor TGLSwartSwarm.Destroy;
begin
  //
  inherited;
end;

initialization
// ------------------------------------------------------------------

  RegisterClasses([TGLCyborg (*, TGLSmartSwarm*)]);

finalization

FreeAndNil(vCyborgsFileFormat);

end.

