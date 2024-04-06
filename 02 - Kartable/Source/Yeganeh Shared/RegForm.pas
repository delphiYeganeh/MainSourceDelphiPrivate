unit RegForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Registry,DateUtils, ExtCtrls, BaseUnit, ExtActns,
  ActnList, DB, Menus;

type
  TRegisterForm = class(TMBaseForm)
    Button1: TButton;
    Label1: TLabel;
    Pass: TLabel;
    Edit1: TEdit;
    LPassword: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    public ProductID:string;
  end;

var
  RegisterForm: TRegisterForm;

implementation


function Time_SerialNumber(ProductID:string):string;
Var  s: String;
   res:integer;
i: byte;
begin
s:=IntToStr(DayOf(now))+ProductID+'Ahmadvand'+IntToStr(hourof(now))+IntToStr(MinuteOf(now));
res:=1;
   for i:=1 to length(s) do
     res:=abs(res*(byte(s[i])+i)) mod 999999999;
Result:=IntToStr(res)

end;
{$R *.dfm}
var done:integer;
function Password(s:string):int64;
 var i:byte ;
begin
Result:=1;
   for i:=1 to length(s) do
     Result:=(Result*(byte(s[i])+i+3) mod 7893456);
end;

procedure TRegisterForm.FormCreate(Sender: TObject);
begin
  LPassword.Caption:=Time_SerialNumber(ProductID);
  done:=-1;
end;

procedure TRegisterForm.Button1Click(Sender: TObject);
begin
    done:=1;
 if edit1.Text<>IntToStr(password(LPassword.Caption)) then
     begin
       done:=-1;
       ShowMessage('ò·„Â ⁄»Ê— ‘„« «‘ »«Â „Ì »«‘œ');
     end;
     close;                                 

end;                           

procedure TRegisterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if done=-1 then
   Application.Terminate;
end;

end.
