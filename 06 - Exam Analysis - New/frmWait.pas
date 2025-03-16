unit frmWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvCircularProgress, ExtCtrls, AdvAppStyler, StdCtrls;

type
  TWaitForm = class(TForm)
    Panel1: TPanel;
    AdvFormStyler1: TAdvFormStyler;
    Label1: TLabel;
    CircularProgress: TAdvCircularProgress;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WaitForm: TWaitForm;

implementation

{$R *.dfm}

procedure TWaitForm.FormShow(Sender: TObject);
begin
  CircularProgress.Enabled := True;
end;

end.
