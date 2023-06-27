unit fConsoleD;

interface

uses
  Winapi.OpenGL,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,

  GLS.Scene,
  GLS.Objects,
  GLS.Cadencer,
  GLS.SceneViewer,
  GLS.BaseClasses,

  GLS.Texture,
  GLS.BitmapFont,
  GLS.WindowsFont,
  GLS.Behaviours,
  GLS.Console,
  GLS.Coordinates,
  GLS.SimpleNavigation,
  GLS.Utils;

type
  TFormConsole = class(TForm)
    Viewer: TGLSceneViewer;
    GLCadencer1: TGLCadencer;
    Scene: TGLScene;
    GLCamera1: TGLCamera;
    Font1: TGLWindowsBitmapFont;
    GLCube1: TGLCube;
    GLLightSource1: TGLLightSource;
    Splitter1: TSplitter;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    Splitter2: TSplitter;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Button6: TButton;
    Button7: TButton;
    GLSimpleNavigation1: TGLSimpleNavigation;
    procedure GLCadencer1Progress(Sender: TObject;
      const deltaTime, newTime: double);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure ViewerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure FormResize(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure OnHelloCommand(const Sender: TGLConsoleCommand;
      const Console: TGLCustomConsole; var Command: TGLUserInputCommand);
  public
    procedure OnCommand(const Sender: TGLConsoleCommand;
      const Console: TGLCustomConsole; var Command: TGLUserInputCommand);
  end;

var
  FormConsole: TFormConsole;
  Console: TGLConsole;

implementation

{$R *.DFM}

procedure TFormConsole.OnHelloCommand(const Sender: TGLConsoleCommand;
  const Console: TGLCustomConsole; var Command: TGLUserInputCommand);
begin
  Console.AddLine('Hi, dude!');
end;

procedure TFormConsole.OnCommand(const Sender: TGLConsoleCommand;
  const Console: TGLCustomConsole; var Command: TGLUserInputCommand);
var
  I: integer;
  str: string;
begin
  if Command.CommandCount = 0 then
    exit;
  Command.strings[0] := lowercase(Command.strings[0]);
  if Command.strings[0] = 'echo' then
  begin
    for I := 1 to Command.CommandCount - 1 do
      str := str + Command.strings[I];
    Console.AddLine('You just typed: ' + str);
    Command.UnknownCommand := False;
  end
  else if Command.strings[0] = 'exit' then
  begin
    Application.Terminate;
    Command.UnknownCommand := False; // user won't see it anyway, but you should
    // get used to puting this line in every
    // command you recognize :)
  end;

  if Command.UnknownCommand then
    Console.AddLine('Current supported external commands are:' +
      '"echo" and "exit"!');
end;

procedure TFormConsole.FormCreate(Sender: TObject);
begin
  Console := TGLConsole.CreateAsChild(Scene.Objects);
  Console.Visible := False;
  Console.SceneViewer := Viewer;
  Console.Font := Font1;

  // optional stuff:
  var Path: TFileName := GetCurrentAssetPath();
  SetCurrentDir(Path  + '\texture');
  Console.HudSprite.Material.Texture.Image.LoadFromFile('GLScene.bmp');
  Console.AddLine('Console started');
  Console.HUDSpriteColor := clWhite;
  Console.FontColor := clBlack;
  Console.Size := 1;

  // two ways of processing commands:
  // 1) manual
  Console.OnCommandIssued := OnCommand;
  // 2)using built-in objects (prefered)
  Console.Commands.Add.CommandName := 'hello';
  Console.Commands.Add.ShortHelp := 'Says hi to you too';
  Console.Commands.Add.LongHelp.Add
    ('Well, the console really does say "Hi, dude" to you, because');
  Console.Commands.Add.LongHelp.Add
    ('it is roude not to greet someone, when he says "hello" to you ;)');
  Console.Commands.Add.OnCommand := OnHelloCommand;

  // register additional commands to enable auto-completion function
  Console.AdditionalCommands.Add('echo');
  Console.AdditionalCommands.Add('exit');
  // for console saved output and loading .ini files
  SetCurrentDir(Path  + '\script');
end;

procedure TFormConsole.GLCadencer1Progress(Sender: TObject;
  const deltaTime, newTime: double);
begin
  Viewer.Invalidate();
end;

procedure TFormConsole.FormKeyPress(Sender: TObject; var Key: char);
begin
  Console.ProcessKeyPress(Key);
end;

procedure TFormConsole.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Console.ProcessKeyDown(Key);
end;

procedure TFormConsole.ViewerMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  Console.Visible := not Console.Visible;
end;

procedure TFormConsole.FormResize(Sender: TObject);
begin
  Console.RefreshHudSize();
end;

procedure TFormConsole.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    Console.Options := Console.Options + [coAutoCompleteCommandsOnKeyPress]
  else
    Console.Options := Console.Options - [coAutoCompleteCommandsOnKeyPress];

  Viewer.SetFocus();
end;

procedure TFormConsole.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    Console.Options := Console.Options + [coAutoCompleteCommandsOnEnter]
  else
    Console.Options := Console.Options - [coAutoCompleteCommandsOnEnter];

  Viewer.SetFocus();
end;

procedure TFormConsole.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
    Console.Options := Console.Options + [coShowConsoleHelpIfUnknownCommand]
  else
    Console.Options := Console.Options - [coShowConsoleHelpIfUnknownCommand];

  Viewer.SetFocus();
end;

procedure TFormConsole.Button1Click(Sender: TObject);
begin
  Console.TypedCommands.SaveToFile('saved_typed_commands.ini');
  Viewer.SetFocus();
end;

procedure TFormConsole.Button2Click(Sender: TObject);
begin
  Console.ColsoleLog.SaveToFile('saved_console_output.ini');
  Viewer.SetFocus();
end;

procedure TFormConsole.Button6Click(Sender: TObject);
begin
  Console.TypedCommands.LoadFromFile('saved_typed_commands.ini');
  Viewer.SetFocus();
end;

procedure TFormConsole.Button7Click(Sender: TObject);
begin
  Console.ColsoleLog.LoadFromFile('saved_console_output.ini');
  Console.RefreshHudSize();
  Viewer.SetFocus();
end;

procedure TFormConsole.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GLCadencer1.Enabled := False;
  Console.Destroy;
end;

end.
