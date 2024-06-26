unit Report_ContractU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, CheckLst,
  YchecklistBox, Menus, DBCtrls, MssDBGrid, DBGrids;

type
  TFrep2 = class(TMBaseForm)
    Report_Customer: TADOStoredProc;
    pnlMain: TPanel;
    ContractGrid: TYDBGrid;
    Panel1: TPanel;
    Label9: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YchecklistBox1: TYchecklistBox;
    YWhereEdit6: TYWhereEdit;
    YWhereEdit8: TYWhereEdit;
    GroupBox1: TGroupBox;
    YWhereEdit9: TYWhereEdit;
    YWhereEdit10: TYWhereEdit;
    YWhereEdit7: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    rdgSake: TRadioGroup;
    chkSake: TCheckBox;
    chkInsuranceAccount: TCheckBox;
    chkGoodJobPercentage: TCheckBox;
    chkTaxPercentage: TCheckBox;
    YWhereEdit12: TYWhereEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BtnCancel: TBitBtn;
    btnShowContractWord: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkSakeClick(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frep2: TFrep2;

implementation

uses dmu, ExportToWord, Math;

{$R *.dfm}

procedure TFrep2.BitBtn1Click(Sender: TObject);
 var i: byte;
  s,where,W :string;
 begin
       w:='';

   for i:=1 to 12 do
     begin
      s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
      if s<>'' then
       where:=where+' and ('+s+')';
     end;

 if YchecklistBox1.SelectedCodes<>'' then
   for i:=0 to YchecklistBox1.Count-1 do
     if YchecklistBox1.Checked[i] then
        if YchecklistBox1.codes[i]<>0 then
           w:=w+' or (Contract.ProductID='+IntToStr(YchecklistBox1.codes[i])+')';
//       w:=w+' or (dbo.fn_ProductIDByCustomerID(C.CustomerID) like ''%'+IntToStr( YchecklistBox1.codes[i]) +'%'')';
//       w:=w+' or (dbo.fn_ProductIDByCustomerID(C.CustomerID) = '''+IntToStr( YchecklistBox1.codes[i]) +''')';

  if w<>'' then
     where:=where+' and ('+copy(w,5,length(w)-4)+')';


  if where<>'' then
   where:=copy(where,6,length(where)-5);
   if chkSake.Checked then
   begin
      if where<>'' then where := where +  'and  contract.ContractId in (select ContractId from ContractGuarantee where Sake = '+IntToStr(rdgSake.ItemIndex)+')'
                  else where :=  ' contract.ContractId in (select ContractId from ContractGuarantee where Sake = '+IntToStr(rdgSake.ItemIndex)+')'
   end;

if   chkGoodJobPercentage.Checked then
    if where <> '' then where := where + ' and ((GoodJobPercentage <> 0 ) or not(GoodJobPercentage is null))'
        else where := ' ((GoodJobPercentage <> 0 ) or not(GoodJobPercentage is null))';

if   chkInsuranceAccount.Checked then
    if where <> '' then where := where + ' and ((InsuranceAccount <> 0 ) or not(InsuranceAccount is null))'
        else where := ' ((InsuranceAccount <> 0 ) or not(InsuranceAccount is null))';

if   chkTaxPercentage.Checked then
    if where <> '' then where := where + ' and ((TaxPercentage <> 0 ) or not(TaxPercentage is null))'
        else where := ' ((TaxPercentage <> 0 ) or not(TaxPercentage is null))'  ;



  dm.Open_Report_Contract(where);
  ContractGrid.UpdateFooter;
end;

procedure TFrep2.BitBtn2Click(Sender: TObject);
begin
 ContractGrid.Print;
end;

procedure TFrep2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrep2.BitBtn3Click(Sender: TObject);
begin
  inherited;
 ContractGrid.CustomizePrint;

end;

procedure TFrep2.FormCreate(Sender: TObject);
begin
  inherited;
YchecklistBox1.Fill;
end;

procedure TFrep2.chkSakeClick(Sender: TObject);
begin
  inherited;
  rdgSake.Enabled := chkSake.Checked;
end;

procedure TFrep2.btnShowContractWordClick(Sender: TObject);
begin
  inherited;
//  if (_ExportCustomerList = true)  then
      ContractGrid.ExportToWord ;//else ShowMessage('��� ���� ����� ����� �� ���� �� ������');

end;

procedure TFrep2.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  { TODO -oparsa : 14030203 }
  if (NewWidth < 1082)  or (NewHeight < 614) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

procedure TFrep2.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

end.



