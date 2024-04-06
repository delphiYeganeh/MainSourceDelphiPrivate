unit FActiveUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, UemsVCL, xpWindow, xpBitBtn;

type
  TActiveUsers = class(TMBaseForm)
    Action1: TAction;
    select_userLoginLogout: TADOStoredProc;
    Panel1: TPanel;
    Panel2: TPanel;
    Number: TLabel;
    makeRep: TBitBtn;
    Button2: TBitBtn;
    Button5: TBitBtn;
    YDBGrid1: TYDBGrid;
    procedure makeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActiveUsers: TActiveUsers;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TActiveUsers.makeRepClick(Sender: TObject);
begin
  inherited;
   DSForm.DataSet:=Exec_Get_ActiveUser;
  Number.Caption:=' йзого :'+IntToStr(DSForm.DataSet.RecordCount);
end;

procedure TActiveUsers.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TActiveUsers.Button2Click(Sender: TObject);
begin
   inherited;
   YDBGrid1.Print;
end;

procedure TActiveUsers.Action1Execute(Sender: TObject);
begin
  inherited;
 makeRepClick(makeRep);

end;

procedure TActiveUsers.FormCreate(Sender: TObject);
begin
  inherited;
makeRepClick(makeRep);
end;

end.
