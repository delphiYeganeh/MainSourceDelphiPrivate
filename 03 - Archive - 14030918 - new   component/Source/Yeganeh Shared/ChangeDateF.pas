 unit ChangeDateF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, UemsVCL, ActnList, xpWindow;

type
  TChangeDate = class(TYBaseForm)
    ShamsiDateEdit1: TShamsiDateEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    AChangeDate: TAction;
    procedure FormCreate(Sender: TObject);
    procedure AChangeDateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeDate: TChangeDate;

implementation

uses DMU, YShamsiDate;

{$R *.dfm}

procedure TChangeDate.FormCreate(Sender: TObject);
begin
  inherited;
  ShamsiDateEdit1.Text:=_today;
end;

procedure TChangeDate.AChangeDateExecute(Sender: TObject);
 var s:string;
begin
  inherited;
 s:=trim(ShamsiDateEdit1.Text);
  if isValidDate(s) then
    begin
     _today:=s;
     close;
    end
  else
     ShowMessage(' «—ÌŒ „⁄ »— ‘„”Ì Ê«—œ ò‰Ìœ');

end;

end.
