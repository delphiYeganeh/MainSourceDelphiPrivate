unit WaitPleaseFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFMWaitPlease = class(TForm)
    EmailPanel: TPanel;
    Label2: TLabel;
    LableFrom: TLabel;
    LableTo: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    Label1: TLabel;
    Timer: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMWaitPlease: TFMWaitPlease;

implementation

{$R *.dfm}

procedure TFMWaitPlease.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
