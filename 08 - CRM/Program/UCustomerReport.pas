unit UCustomerReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, Buttons, Grids,
  DBGrids, YDbgrid, ExtCtrls, ADODB,YshamsiDate, DBCtrls, xpPanel;

type
  TfrCustomerReport = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtNumber: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BtnCancel: TBitBtn;
    btnShowContractWord: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpCustomerReport: TADOStoredProc;
    SpCustomerReportCustomerId: TIntegerField;
    SpCustomerReportNickName: TWideStringField;
    SpCustomerReportProductTitle: TWideStringField;
    SpCustomerReportproductid: TWordField;
    SpCustomerReportContractFinish: TIntegerField;
    Label2: TLabel;
    dbgCustomerReport: TYDBGrid;
    xpPanel1: TxpPanel;
    Label3: TLabel;
    Label4: TLabel;
    dblProduct: TDBLookupComboBox;
    edtCustomerId: TEdit;
    SpCustomerReportCustomerIdStr: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgCustomerReportDblClick(Sender: TObject);
    procedure edtCustomerIdChange(Sender: TObject);
    procedure dblProductKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNumberKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCustomerReport: TfrCustomerReport;

implementation

uses dmu, BusinessLayer, Telinputunit;

{$R *.dfm}

procedure TfrCustomerReport.BitBtn2Click(Sender: TObject);
begin
  inherited;
dbgCustomerReport.Print;
end;

procedure TfrCustomerReport.btnShowContractWordClick(Sender: TObject);
begin
  inherited;
dbgCustomerReport.ExportToWord;
end;

procedure TfrCustomerReport.BitBtn3Click(Sender: TObject);
begin
  inherited;
dbgCustomerReport.ExportToExcel;
end;

procedure TfrCustomerReport.BitBtn1Click(Sender: TObject);
begin
  inherited;
if Is_Integer(edtNumber.Text) then
  with SpCustomerReport do
  begin
      Close;
       Parameters.ParamByName('@Number').Value := edtNumber.Text;
      Open;
  end
else ShowMessage('⁄œœ —« ’ÕÌÕ Ê«œ ﬂ‰Ìœ');

end;

procedure TfrCustomerReport.dbgCustomerReportDblClick(Sender: TObject);
begin
  inherited;
   propertiesForm := TPropertiesForm.Create(Application,SpCustomerReportCustomerId.AsInteger) ;
   PropertiesForm.Showmodal;
end;

procedure TfrCustomerReport.edtCustomerIdChange(Sender: TObject);
var StrFilter : String;
begin
  inherited;
  if SpCustomerReport.Active then
      with SpCustomerReport do
      begin
        StrFilter := '';
        if edtCustomerId.Text <> '' then
          StrFilter := 'CustomerIdStr like ''%'+Trim(edtNumber.Text)+'%''';
        if dblProduct.KeyValue <> null then
            if StrFilter <> '' then StrFilter := StrFilter+ ' and ProductId = '+IntToStr(dblProduct.KeyValue)
            else StrFilter :=  ' ProductId = '+IntToStr(dblProduct.KeyValue);
        Filtered := False;
        Filter := StrFilter;
        if StrFilter <> '' then
            Filtered := True;

      end;

end;

procedure TfrCustomerReport.dblProductKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  edtCustomerIdChange(Sender);
end;

procedure TfrCustomerReport.edtNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in ['0'..'9',char(vk_delete),char(vk_Back)]) then
    Key :=#0;
end;

end.
