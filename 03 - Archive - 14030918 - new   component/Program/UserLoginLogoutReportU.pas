unit UserLoginLogoutReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, UemsVCL, xpWindow, xpBitBtn,
  AdvGlowButton;

type
  TFUserLoginLogoutReport = class(TMBaseForm)
    Panel1: TPanel;
    Action1: TAction;
    bdate: TShamsiDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edate: TShamsiDateEdit;
    Select_UserLoginLogout: TADOStoredProc; {Ranjbar 89.05.27 ID=41}
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    Number: TLabel;
    makeRep: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Select_UserLoginLogoutUserName: TWideStringField;
    Select_UserLoginLogoutIPAddress: TStringField;
    Select_UserLoginLogoutComputerName: TStringField;
    Select_UserLoginLogoutLoginDate: TStringField;
    Select_UserLoginLogoutLoginTime: TStringField;
    Select_UserLoginLogoutLogoutDate: TStringField;
    Select_UserLoginLogoutLogoutTime: TStringField;
    Select_UserLoginLogoutisSafeLogout: TBooleanField;
    pnlMain: TPanel;
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

  res := Exec_select_userLoginLogout(Trim(bdate.Text), Trim(edate.Text), _userid);
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
