unit CancelCustomerU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, DBCtrls, Mask, ExtActns, ActnList,
  DB, UemsVCL, ExtCtrls, Grids, DBGrids, YDbgrid, ADODB, Menus;

type
  TFrCancelCustomer = class(TMBaseForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox3: TPanel;
    Select_customer_By_CustomerID: TADOStoredProc;
    Select_customer_By_CustomerIDCustomerID: TAutoIncField;
    Select_customer_By_CustomerIDCustomerNo: TStringField;
    Select_customer_By_CustomerIDPersonTitle: TWideStringField;
    Select_customer_By_CustomerIDAddress: TWideStringField;
    Select_customer_By_CustomerIDPhone: TWideStringField;
    Select_customer_By_CustomerIDNotes: TWideStringField;
    Select_customer_By_CustomerIDCompanyName: TWideStringField;
    Select_customer_By_CustomerIDTreater: TWideStringField;
    Select_customer_By_CustomerIDPostalCode: TWideStringField;
    Select_customer_By_CustomerIDEmailAddress: TWideStringField;
    Select_customer_By_CustomerIDWorkPhone1: TWideStringField;
    Select_customer_By_CustomerIDFaxNumber: TWideStringField;
    Select_customer_By_CustomerIDMobilePhone: TWideStringField;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DSelect_customer_By_CustomerID: TDataSource;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Select_customer_By_CustomerIDProducts: TWideStringField;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    Panel1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    DBEdit7: TDBShamsiDateEdit;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    Select_customer_By_CustomerIDCityId: TSmallintField;
    Select_customer_By_CustomerIDGroupId: TIntegerField;
    Select_customer_By_CustomerIDMarketerID: TIntegerField;
    Select_customer_By_CustomerIDIsActive: TBooleanField;
    Select_customer_By_CustomerIDSenderType: TWordField;
    Select_customer_By_CustomerIDPriority: TIntegerField;
    Select_customer_By_CustomerIDCompaginID: TWordField;
    Select_customer_By_CustomerIDWebsite: TStringField;
    Select_customer_By_CustomerIDcompetitiveNote: TWideStringField;
    Select_customer_By_CustomerIDCustomerStatusID: TWordField;
    Select_customer_By_CustomerIDCancelReasonID: TWordField;
    Select_customer_By_CustomerIDCancelComment: TWideStringField;
    Select_customer_By_CustomerIDCancelDate: TStringField;
    Select_customer_By_CustomerIDCancelReasonTitle: TStringField;
    Select_customer_By_CustomerIDInsertdate: TStringField;
    Select_customer_By_CustomerIDLastUpdate: TStringField;
    BitBtn3: TBitBtn;
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure refreshData;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CustomerID: integer;
  end;

var
  FrCancelCustomer: TFrCancelCustomer;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

procedure TFrCancelCustomer.SpeedButton2Click(Sender: TObject);
begin
  inherited;
if dm.Select_Contract_By_CustomerIDAttachment.AsString<>'' then
  dm.OpenWordFile(dm.Select_Contract_By_CustomerIDAttachment.AsString);
end;

procedure TFrCancelCustomer.BitBtn1Click(Sender: TObject);
begin
  inherited;
with  Select_customer_By_CustomerID do
 if state in [dsedit,dsinsert] then
  begin
    Select_customer_By_CustomerIDCustomerStatusID.AsInteger:=3;
    Post;
  end;
close;
end;

procedure TFrCancelCustomer.BitBtn2Click(Sender: TObject);
begin
  inherited;
with  Select_customer_By_CustomerID do
 if state in [dsedit,dsinsert] then  Cancel;
close;
end;

procedure TFrCancelCustomer.refreshData;
begin
  inherited;
with Select_customer_By_CustomerID do
 begin
   Close;
   Parameters.ParamByName('@customerid').Value:=CustomerID;
   Open;
   Edit;
 end;
end;

procedure TFrCancelCustomer.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› «‰’—«›Ì Ê ÅÌêÌ—Ì „Ãœœ „‘ —Ì „ÿ„∆‰ Â” Ìœø',true)  then
   begin
    Dm.Followup_cancel(CustomerID);
    Close;
   end;
end;

end.
