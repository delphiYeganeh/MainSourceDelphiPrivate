unit UserLoginLogoutReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, UemsVCL, Menus, Mask;

type
  TFrUserLoginLogoutReport = class(TYBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    select_userLoginLogout: TADOStoredProc;
    Dsform: TDataSource;
    Panel2: TPanel;
    Button5: TBitBtn;
    Button3: TBitBtn;
    Button2: TBitBtn;
    makeRep: TBitBtn;
    Number: TLabel;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    MEDateFrom: TMaskEdit;
    MEDateTo: TMaskEdit;
    procedure makeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrUserLoginLogoutReport: TFrUserLoginLogoutReport;

implementation

uses Dmu , BusinessLayer , YShamsiDate;

{$R *.dfm}

procedure TFrUserLoginLogoutReport.makeRepClick(Sender: TObject);
Var
   Res:TADODataSet;
begin
   inherited;
   {RAnjbar}
   //Res := Open_userLoginLogout(bdate.Text,edate.Text,_userid);
   Res := Open_userLoginLogout(Txt_Del254(MEDateFrom.Text),Txt_Del254(MEDateTo.Text),_userid);
   //---
   Number.Caption := ' йзого :'+IntToStr(Res.RecordCount);
   DSForm.DataSet := Res;
end;

procedure TFrUserLoginLogoutReport.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrUserLoginLogoutReport.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TFrUserLoginLogoutReport.Button2Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.Print;
end;

procedure TFrUserLoginLogoutReport.Action1Execute(Sender: TObject);
begin
  inherited;
 makeRepClick(makeRep);
end;

procedure TFrUserLoginLogoutReport.FormCreate(Sender: TObject);
begin
   inherited;
   {Ranjbar
   bdate.Text:=copy(_today,1,8)+'01';
   Edate.Text:=_today;}
   MEDateFrom.Text := #254 + copy(_today,1,8)+'01';
   MEDateTo.Text := #254 + _today;
   //---
end;

procedure TFrUserLoginLogoutReport.FormShow(Sender: TObject);
begin
   inherited;
   DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

procedure TFrUserLoginLogoutReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

end.
