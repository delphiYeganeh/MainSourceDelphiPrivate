unit CrackU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Registry,DateUtils, ExtCtrls, ActnList, DB, ADODB  ;

type
  TFcrack = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ActionList1: TActionList;
    Action1: TAction;
    ADOConnection: TADOConnection;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcrack: TFcrack;

implementation

uses YShamsiDate;


{$R *.dfm}



function Password(s:string):int64;
 var i:byte ;
begin
Result:=1;
   for i:=1 to length(s) do
     Result:=Result*(byte(s[i])+i+3) mod 7893456;
end;


procedure TFcrack.Action1Execute(Sender: TObject);
begin
 edit1.Text:=IntToStr(password(Edit2.Text));
end;

end.


