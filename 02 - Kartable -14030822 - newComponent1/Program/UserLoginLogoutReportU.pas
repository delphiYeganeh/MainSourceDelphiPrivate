unit UserLoginLogoutReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, UemsVCL,  xpBitBtn, Menus;

type
  TFUserLoginLogoutReport = class(TMBaseForm)
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    makeRep: TBitBtn;
    Button2: TBitBtn;
    Button3: TBitBtn;
    Button5: TBitBtn;
    Number: TLabel;
    Button6: TBitBtn;
    Action1: TAction;
    bdate: TShamsiDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edate: TShamsiDateEdit;
    select_userLoginLogout: TADOStoredProc;
    procedure makeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUserLoginLogoutReport: TFUserLoginLogoutReport;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFUserLoginLogoutReport.makeRepClick(Sender: TObject);
 var res:TADODataSet;
begin
  inherited;

   res:=Exec_select_userLoginLogout(bdate.Text,edate.Text,_userid);
  Number.Caption:=' йзого :'+IntToStr(res.RecordCount);
  DSForm.DataSet:=res;
end;

procedure TFUserLoginLogoutReport.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFUserLoginLogoutReport.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TFUserLoginLogoutReport.Button2Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.Print;
end;

procedure TFUserLoginLogoutReport.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;

procedure TFUserLoginLogoutReport.Action1Execute(Sender: TObject);
begin
  inherited;
 makeRepClick(makeRep);
end;

procedure TFUserLoginLogoutReport.FormCreate(Sender: TObject);
begin
  inherited;
 bdate.Text:=copy(_Today,1,8)+'01';
 Edate.Text:=_Today;
end;

end.
