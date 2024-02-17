unit fdUtilities;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFormUtilities = class(TForm)
    PanelLeft: TPanel;
    tvBench: TTreeView;
    PageControl: TPageControl;
    tsOne: TTabSheet;
    tsTwo: TTabSheet;
    tsThree: TTabSheet;
    tsFour: TTabSheet;
    tsFive: TTabSheet;
    tsSix: TTabSheet;
    tsSeven: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUtilities: TFormUtilities;

implementation

{$R *.dfm}

end.
