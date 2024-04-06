unit Dmu;

interface

uses
  Forms,DB, AppEvnts, ADODB, ImgList, Controls, Classes,ComCtrls,SysUtils,Graphics,DBCtrls,YwhereEdit,
   variants,dialogs,dateutils,windows,Word2000, OleServer, ExtCtrls, WordXP,ActnList;

type
  Tdm = class(TDataModule)
    YeganehConnection: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
procedure Connect;
function IntToY:string ;

  private
    { Private declarations }
  public

  end;

var
  dm: Tdm;
     DatabaseName:string;
     productID:string;

{$R *.dfm}
implementation

uses Uconnect;

procedure Tdm.Connect;
begin
 Fconnect:=TFconnect.Create(Application);
end;
function Tdm.IntToY:string ;
var i,j,k,n:integer;
begin
Result:='';
i:=60+3+1+1;
j:=2*60+2*3+1;
k:=15*11+3+1;
 for n:=1 to 66 do
   begin
      if (i>=28+1-1) and (i<=128+1-1) then
          Result:=Result+char(i);
     i:=k*i mod j;
   end;
end;
procedure Tdm.DataModuleCreate(Sender: TObject);
begin
 DatabaseName:='ydabir';
 productID:='Dabir' ;
end;

end.
