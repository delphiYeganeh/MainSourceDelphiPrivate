unit UProductADD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, Menus;

type
  TProductADD = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    YwhereEdit0: TYWhereEdit;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    YWhereEdit7: TYWhereEdit;
    YWhereEdit8: TYWhereEdit;
    YWhereEdit9: TYWhereEdit;
    ahmadvand: TLabel;
    Label4: TLabel;
    YWhereEdit10: TYWhereEdit;
    Label12: TLabel;
    YWhereEdit11: TYWhereEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    Label13: TLabel;
    YWhereEdit12: TYWhereEdit;
    Label14: TLabel;
    YWhereEdit13: TYWhereEdit;
    Report_Customer: TADOStoredProc;
    YDBGrid2: TYDBGrid;
    insert_Customer_toProduct: TADOStoredProc;
    delete_Customer_fromProduct: TADOStoredProc;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function where:wideString;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductADD: TProductADD;

implementation

uses dmu, ExportToWord, USelectProduct;

{$R *.dfm}

procedure TProductADD.BitBtn1Click(Sender: TObject);
 begin
 with Report_Customer  do
   begin
    close;
    Parameters.ParamByName('@where').Value:=where;
    Parameters.ParamByName('@Productid').Value:=_ProductID;
    Open;
    ahmadvand.Caption:=' ⁄œ«œ ='+IntToStr(RecordCount);
  end;
BitBtn2.Enabled:=True;
BitBtn3.Enabled:=True;
end;

procedure TProductADD.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TProductADD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

function TProductADD.where:widestring;
 var i: byte;
  s,w :string;
 begin
   for i:=0 to 13 do
     begin
      s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
      if s<>'' then
       w:=w+' and ('+s+')';
     end;
  if w<>'' then
   w:=copy(w,6,length(w)-5);
Result:=w;

end;

procedure TProductADD.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('¬Ì« «“ «Ì‰ ﬂ«— „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)<> mryes then exit;
   SelectProduct:=TSelectProduct.Create(Application);
   SelectProduct.ShowModal;
   if not SelectProduct.done then exit;
   with insert_Customer_toProduct,Parameters do
    begin
     Parameters.ParamByName('@where').Value:=where;
     Parameters.ParamByName('@Productid').Value:=dm.ProductProductID.AsInteger;
     ExecProc;
    end;
end;

procedure TProductADD.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('¬Ì« «“ «Ì‰ ﬂ«— „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)<> mryes then exit;
   SelectProduct:=TSelectProduct.Create(Application);
   SelectProduct.ShowModal;
   if not SelectProduct.done then exit;
   with delete_Customer_fromProduct,Parameters do
    begin
     Parameters.ParamByName('@where').Value:=where;
     Parameters.ParamByName('@Productid').Value:=dm.ProductProductID.AsInteger;
     ExecProc;
    end;

end;

end.



