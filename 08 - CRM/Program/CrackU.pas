unit CrackU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Registry,DateUtils, ExtCtrls, ActnList, DB, ADODB  ;

type
  TFcrack = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    ADOConnection: TADOConnection;
    pnlMain: TPanel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Label2: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    procedure Action1Execute(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcrack: TFcrack;

implementation

uses dmu,YShamsiDate;


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

procedure TFcrack.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
     { TODO -oparsa : 14030203 }
      Resize := False  ;
      { TODO -oparsa : 14030203 }
end;

procedure TFcrack.FormShow(Sender: TObject);
begin
  pnlMain.Color := _Color1 ;
end;

end.


