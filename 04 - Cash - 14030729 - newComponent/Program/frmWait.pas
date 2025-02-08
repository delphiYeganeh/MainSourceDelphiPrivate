unit frmWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvCircularProgress, ExtCtrls, AdvAppStyler, StdCtrls, ComCtrls;

type
  TWaitForm = class(TForm)
    Panel1: TPanel;
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

//uses Kernel;

{$R *.dfm}

procedure TWaitForm.FormShow(Sender: TObject);
begin
//  DataKernel.SetComponentStyle(Self);
  CircularProgress.Enabled := True;
end;

end.
