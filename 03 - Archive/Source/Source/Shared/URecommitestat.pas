unit URecommitestat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, YWhereEdit,  ExtActns, ActnList, DB,
  ExtCtrls, xpBitBtn, Grids, DBGrids, YDbgrid, ADODB, Buttons, Menus;

type
  TFrRecommiteStat = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    Number: TLabel;
    MakeRep: TBitBtn;
    Button6: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    Panel1: TPanel;
    sp_recommite_statistic: TADOStoredProc;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    RecommiteDate: TYWhereEdit;
    DeadLineDate: TYWhereEdit;
    ProceedDate: TYWhereEdit;
    Label5: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    ProceedStatus: TComboBox;
    Label9: TLabel;
    OrgID: TYWhereEdit;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Lusermem: TLabel;
    YWhereEdit27: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit12: TYWhereEdit;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    DelayDays: TYWhereEdit;
    Label6: TLabel;
    ProgressDay: TYWhereEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    function  Where:string;
    procedure FormCreate(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrRecommiteStat: TFrRecommiteStat;

implementation

uses Dmu, FromOrgU;

{$R *.dfm}

function TFrRecommiteStat.Where:string;
 var i: byte;
 begin
   for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TYWhereEdit') then
      if TYWhereEdit(Components[i]).Resultwhere <>'' then
        Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere+'';

        if ProceedStatus.ItemIndex>0 then
           Result:=Result+' and (Rc.Proceeded='+IntToStr(2-ProceedStatus.ItemIndex)+')';

  if Result<>'' then Result:=copy(Result,6,length(Result)-5);
 end;


procedure TFrRecommiteStat.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;

end;

procedure TFrRecommiteStat.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;

end;

procedure TFrRecommiteStat.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;

end;

procedure TFrRecommiteStat.FormCreate(Sender: TObject);
begin
  inherited;
Lusermem.Caption:= dm.UserMemoDisplay;
DelayDays.FieldName:='-dbo.Recommite_DeadLine(rc.Recommiteid,isnull(rc.Proceeddate,'''+_Today+'''))';
ProgressDay.FieldName:='dbo.shamsidatediff(rc.Recommitedate ,isnull(rc.Proceeddate,'''+_Today+'''))';
if _kartable then
  begin
    SpeedButton2.Visible:=false;
    orgid.Text:=IntToStr(_UserFromOrgID);
    orgid.Enabled:=false;
  end;

end;

procedure TFrRecommiteStat.MakeRepClick(Sender: TObject);
begin
  inherited;
  with sp_recommite_statistic,Parameters do
   begin
     close;
     ParamByName('@SecretariatID').Value:=dm.SecID;
     ParamByName('@myear').Value:=dm.CurrentMyear;
     ParamByName('@where').Value:=where;
     Open;
     Number.Caption:='йзого  : '+ IntToStr(RecordCount)
   end;
end;

procedure TFrRecommiteStat.SpeedButton2Click(Sender: TObject);
begin
  inherited;
FromOrgForm:=TFromOrgForm.Create(Application);
FromOrgForm.OrganizeMode:=false;
FromOrgForm.ShowModal;
if FromOrgForm.done then
 if OrgID.text='' then
  OrgID.Text:=IntToStr( _ResultOrgID)
 else
  OrgID.Text:=OrgID.Text+','+IntToStr( _ResultOrgID)


end;

procedure TFrRecommiteStat.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
