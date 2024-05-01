unit UContract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, DBCtrls, Mask, ExtActns, ActnList,
  DB, UemsVCL, ExtCtrls, Grids, DBGrids, YDbgrid, ADODB, Menus, xpPanel,
  YWhereEdit, YCheckGroupBox,shellAPI, YDBEDit, YAmountEdit, KimiyaEdit,numberToStr,
  MssMessage, MssCalendarPro;

type
  TFrContract = class(TMBaseForm)
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
    DSelect_customer_By_CustomerID: TDataSource;
    Select_customer_By_CustomerIDProducts: TWideStringField;
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
    Select_customer_By_CustomerIDInsertdate: TStringField;
    Select_customer_By_CustomerIDLastUpdate: TStringField;
    Select_customer_By_CustomerIDUserTableLinkedID: TIntegerField;
    Select_customer_By_CustomerIDFreeField01: TWideStringField;
    Select_customer_By_CustomerIDFreeField02: TWideStringField;
    Select_customer_By_CustomerIDFreeField03: TWideStringField;
    Select_customer_By_CustomerIDFreeField04: TWideStringField;
    Select_customer_By_CustomerIDFreeField05: TWideStringField;
    Select_customer_By_CustomerIDFreeField06: TWideStringField;
    Select_customer_By_CustomerIDFreeField07: TWideStringField;
    Select_customer_By_CustomerIDFreeField08: TWideStringField;
    Select_customer_By_CustomerIDFreeField09: TWideStringField;
    Select_customer_By_CustomerIDFreeField10: TWideStringField;
    Select_customer_By_CustomerIDFreeField11: TWideStringField;
    Select_customer_By_CustomerIDFreeField12: TWideStringField;
    Select_customer_By_CustomerIDFreeField13: TWideStringField;
    Select_customer_By_CustomerIDFreeField14: TWideStringField;
    Select_customer_By_CustomerIDFreeField15: TWideStringField;
    Select_customer_By_CustomerIDFreeField16: TWideStringField;
    Select_customer_By_CustomerIDFreeField17: TWideStringField;
    Select_customer_By_CustomerIDFreeField18: TWideStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    Select_customer_By_CustomerIDStateID: TWordField;
    Select_customer_By_CustomerIDInnerPhone: TWideStringField;
    DelgrdRecord: TAction;
    MssMessage1: TMssMessage;
    SpDbgridContract: TADOStoredProc;
    SpDbgridContractContractID: TAutoIncField;
    SpDbgridContractCustomerID: TIntegerField;
    SpDbgridContractBeginDate: TStringField;
    SpDbgridContractEndDate: TStringField;
    SpDbgridContractAttachment: TWideStringField;
    SpDbgridContractComment: TWideStringField;
    SpDbgridContractMarketerID: TIntegerField;
    SpDbgridContractContractTypeID: TWordField;
    SpDbgridContractProductID: TWordField;
    SpDbgridContractContractSubTypeID: TWordField;
    SpDbgridContractContractText: TBlobField;
    SpDbgridContractTaxPercentage: TFloatField;
    SpDbgridContractGoodJobPercentage: TFloatField;
    SpDbgridContractByCashAmount: TFloatField;
    SpDbgridContractByCashFishNo: TFloatField;
    SpDbgridContractInsuranceAccount: TFloatField;
    SpDbgridContractTaxFish: TBlobField;
    SpDbgridContractContractTypeTitle: TWideStringField;
    SpDbgridContractContractSubTypeTitle: TWideStringField;
    SpDbgridContractProductTitle: TWideStringField;
    SpDbgridContractMarketerTitle: TWideStringField;
    SpDbgridContractTotalAmount: TFloatField;
    dsCashPay: TDataSource;
    dsCeckPay: TDataSource;
    adoCashPay: TADOQuery;
    adoCheckPay: TADOQuery;
    adoCheckPayContractchequeID: TAutoIncField;
    adoCheckPayContractID: TIntegerField;
    adoCheckPayChequeAmount: TFloatField;
    adoCheckPayChequeNo: TWideStringField;
    adoCheckPayDate: TStringField;
    adoCheckPayAccountNumber: TWideStringField;
    adoCheckPayAccountName: TWideStringField;
    adoCheckPayBankName: TWideStringField;
    adoCheckPayComment: TWideStringField;
    MssCalendarPro1: TMssCalendarPro;
    adoCheckPayChequeImage: TBlobField;
    adoCheckPayFileType: TWideStringField;
    adoCashPayContractPayByCashID: TAutoIncField;
    adoCashPayContractID: TIntegerField;
    adoCashPayAmount: TFloatField;
    adoCashPayDate: TStringField;
    adoCashPayFishNo: TWideStringField;
    adoCashPayAccountNo: TWideStringField;
    adoCashPayBankName: TWideStringField;
    adoCashPayComment: TWideStringField;
    adoCashPayFishImage: TBlobField;
    adoCashPayFileType: TWideStringField;
    SpDbgridContractSignUpDate: TStringField;
    SpDbgridContractContractExcell: TBlobField;
    SpDbgridContractAmount: TFloatField;
    pnlMain: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    grbCustomer: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    dbdCustomerNo: TDBEdit;
    dbeManager: TDBEdit;
    dbeProducts: TDBEdit;
    GroupBox2: TGroupBox;
    dbgContractsList: TYDBGrid;
    xpPanel1: TxpPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    dblsrchProductID: TDBLookupComboBox;
    dblsrchMarketerID: TDBLookupComboBox;
    dblSrchContractType: TDBLookupComboBox;
    edtSrchStartDate: TEdit;
    edtSrchEndDate: TEdit;
    btnSearch: TBitBtn;
    edtTax: TEdit;
    edtGoodJob: TEdit;
    BitBtn1: TBitBtn;
    pnlViewContract: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    GroupBox4: TGroupBox;
    edtGuaranteeAmount: TLabel;
    dbeViwContractTypeTitleCNT: TDBEdit;
    bdeViwContractTypeTitleCNT: TDBEdit;
    dbeViwMarketerCNT: TDBEdit;
    dbeViwBeginDateCNT: TDBEdit;
    dbeViwEndDateCNT: TDBEdit;
    dbeViwAmountCNT: TDBEdit;
    dbeViwProductTitleCNT: TDBEdit;
    dbeViwGoodJobPercentageCNT: TDBEdit;
    dbeViwTaxPercentageCNT: TDBEdit;
    dbeViwInsuranceAccountCNT: TDBEdit;
    btnTaxFishImage: TBitBtn;
    dbeViwTotalAmountCNT: TDBEdit;
    edtAmountAlphabet: TEdit;
    edtAmount: TEdit;
    edtTotalAmount: TEdit;
    dbeCommentCNT: TDBMemo;
    pnlEdit: TxpPanel;
    GroupBox5: TGroupBox;
    dbgPayByCash: TYDBGrid;
    GroupBox3: TGroupBox;
    btnViwByCashImage: TBitBtn;
    btnAddByCashImage: TBitBtn;
    DBNCashInsert: TDBNavigator;
    DBNCashDelete: TDBNavigator;
    DBNCashEdit: TDBNavigator;
    DBNCashPost: TDBNavigator;
    DBNCashCancel: TDBNavigator;
    GroupBox6: TGroupBox;
    dbgChequePay: TYDBGrid;
    GroupBox7: TGroupBox;
    btnViwChequeImage: TBitBtn;
    btnAddChequeImage: TBitBtn;
    DBNCheckInsert: TDBNavigator;
    DBNCheckDelete: TDBNavigator;
    DBNCheckEdit: TDBNavigator;
    DBNCheckPost: TDBNavigator;
    DBNCheckCancel: TDBNavigator;
    Panel3: TPanel;
    BtnCancel: TBitBtn;
    btnDel: TBitBtn;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnShowContractWord: TBitBtn;
    pnlGuarantee: TxpPanel;
    Label3: TLabel;
    Label19: TLabel;
    rdgSake: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label18: TLabel;
    dbeEndDate: TDBShamsiDateEdit;
    edbStartDate: TDBShamsiDateEdit;
    btnAddGuaranteeImage: TBitBtn;
    btnGuaranteeImageLoad: TBitBtn;
    dblGuaranteeType: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BtnCancelClick(Sender: TObject);
    procedure RefreshData;
    procedure btnDelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgContractsListDblClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure SpDbgridContractBeforePost(DataSet :TDataSet);
//    procedure dbgChequePayBeforePost(DataSet :TDataSet);
    procedure dbgPayByCashBeforePost(DataSet :TDataSet);
    procedure btnEditClick(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure pnlEditAfterMinimized(Sender: TxpPanel;ASizeRestored: Boolean);
    procedure SpDbgridContractAfterScroll(DataSet: TDataSet);
    procedure pnlGuaranteeAfterMinimized(Sender: TxpPanel;ASizeRestored: Boolean);
    procedure btnTaxFishImageClick(Sender: TObject);
    procedure btnGuaranteeImageLoadClick(Sender: TObject);
    procedure btnAddGuaranteeImageClick(Sender: TObject);
    procedure pnlGuaranteeExit(Sender: TObject);
    procedure btnAddByCashImageClick(Sender: TObject);
    procedure btnAddChequeImageClick(Sender: TObject);
    procedure btnViwByCashImageClick(Sender: TObject);
    procedure btnViwChequeImageClick(Sender: TObject);
    procedure AexitExecute(Sender: TObject);
    procedure dbgChequePayColExit(Sender: TObject);
    procedure SpDbgridContractTotalAmountChange(Sender: TField);
    procedure edtTotalAmountChange(Sender: TObject);
    procedure edtAmountChange(Sender: TObject);
    procedure dbeViwTotalAmountCNTChange(Sender: TObject);
    procedure dbeViwAmountCNTChange(Sender: TObject);
    procedure edtGuaranteeAmountChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DelgrdRecordExecute(Sender: TObject);
    procedure dbgContractsListNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure dbgPayByCashMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgChequePayMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgPayByCashKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgChequePayKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgChequePayNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure dbgPayByCashNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure pnlGuaranteeAfterMaximized(Sender: TxpPanel;
      ASizeRestored: Boolean);
    procedure adoCheckPayBeforePost(DataSet: TDataSet);
    procedure adoCashPayBeforePost(DataSet: TDataSet);
    procedure adoCheckPayPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure adoCashPayPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);


  Private
   qrydblsrchContractType,qrydblContractSubType,qrydblsrchProduct,QryGuarantee,qrydbgPayByCash ,qrydbgChequePay:TADOQuery ;
   gID :Integer;
   Procedure Search_contract;
   procedure OpenEditAddForm;
   procedure SetdbgChequePay;
   procedure SetdbgPayByCash;
   procedure setGuaranteeType;
   procedure loadGuarantee;
   Function  LoadImageField(Field:TField;Path:String):Boolean;
   procedure SetColorForm;
    { Private declarations }
  Public
    { Public declarations }
    DsdbgContract : TDataSource;
    Procedure SetComponentsDataSource;
    procedure setdblProducts;
    procedure SetdblContractType;
    Constructor create (AOwner : TComponent;    CustomerID: integer);reintroduce;virtual;
  End;

var
  FrContract: TFrContract;
   const
    qryTextSetdblProducts = 'select  Producttitle,cp.ProductID from CustomerProduct CP inner join Product p on(cp.ProductID = p.ProductID) where CustomerID = ';

implementation

uses dmu, YShamsiDate, BusinessLayer, UContractAdd, ImageUnit;

{$R *.dfm}


constructor TFrContract.create(AOwner: TComponent; CustomerID: integer);
begin

   Directory := extractFilePath(Application.ExeName)+'\DataFile\';
   if not DirectoryExists(Directory) then
          MkDir(Directory);


   if (_ShowContract = false) then
   begin
          ShowMessage('‘„« œ” —”Ì »—«Ì „‘«ÂœÂ ﬁ—«—œ«œÂ« —« ‰œ«—Ìœ');
          Abort;
   end;

  inherited create(AOwner);


    gCustomerID :=    CustomerID;
    gID         :=    0;
//    SpDbgridContract          := TADOStoredProc.Create(nil);
    DsdbgContract             := TDataSource.Create(nil);
    qrydblsrchContractType    := TADOQuery.Create(nil);
    qrydblContractSubType     := TADOQuery.Create(nil);
    qrydblsrchProduct         := TADOQuery.Create(nil);
    refreshData;
    Search_contract;
    SetdblContractType;
    setdblProducts;
    SetComponentsDataSource;
end;

//--------------------------------------------------------------------------------------------------------- SpDbgridContract intitialization
procedure TFrContract.Search_contract;
var ContractTypeID	:integer;MarketerID	:integer;
                                    ProductId		:integer;
      GoodJob ,tax:Real;

begin
  ContractTypeID	:=0;
  MarketerID	    :=0;
  ProductId		    :=0;

  if dblSrchContractType.KeyValue <> null then  ContractTypeID  :=  dblSrchContractType  .KeyValue;
  if dblsrchMarketerID  .KeyValue <> null then  MarketerID      :=  dblsrchMarketerID    .KeyValue;
  if dblsrchProductID   .KeyValue <> null then  ProductId       :=  dblsrchProductID     .KeyValue;
  if edtTax.Text                  = ''    then tax := -1 else tax := StrToFloatDef(edtTax.Text,0);
  if edtGoodJob.Text              = ''    then GoodJob := -1 else GoodJob := StrToFloatDef(edtGoodJob.Text,0);
   SpSearch_ContractDetail(edtSrchStartDate.Text,edtSrchEndDate.Text,ContractTypeID,MarketerID,ProductId
                                                        ,tax,GoodJob
                                                        ,Select_customer_By_CustomerID.FieldByName('CustomerID').AsInteger,_UserTypeID);

//  SpDbgridContract            := SpSearch_ContractDetail(edtSrchStartDate.Text,edtSrchEndDate.Text,ContractTypeID,MarketerID,ProductId
//                                                        ,tax,GoodJob
//                                                        ,Select_customer_By_CustomerID.FieldByName('CustomerID').AsInteger,_UserTypeID);
  with SpDbgridContract do
  begin
      Close;
      Parameters.ParamByName('@StartDate').Value:=edtSrchStartDate.Text;
      Parameters.ParamByName('@EndDate').Value:=edtSrchEndDate.Text;
      Parameters.ParamByName('@ContractTypeID').Value:=ContractTypeID;
      Parameters.ParamByName('@MarketerID').Value:=MarketerID;
      Parameters.ParamByName('@ProductId').Value:=ProductId;
      Parameters.ParamByName('@TaxPercentage').Value:=tax;
      Parameters.ParamByName('@GoodJobPercentage').Value:=GoodJob;
      Parameters.ParamByName('@customerid').Value:=Select_customer_By_CustomerID.FieldByName('CustomerID').AsInteger;
      Parameters.ParamByName('@UserTypeID').Value:=_UserTypeID;
      Open;
  end;


  DsdbgContract   .DataSet    := SpDbgridContract;
  dbgContractsList.DataSource := DsdbgContract;

  SpDbgridContract.Locate('ContractId',gID,[]);
  SpDbgridContract.BeforePost           :=  SpDbgridContractBeforePost;
  SpDbgridContract.AfterScroll          := SpDbgridContractAfterScroll;

//  if   SpDbgridContract.RecordCount > 0 then
//    begin
      SetdbgChequePay;
      SetdbgPayByCash;
      loadGuarantee;
      SpDbgridContract.FieldByName('TotalAmount').Alignment := taLeftJustify;
      SpDbgridContract.FieldByName('Amount').Alignment := taLeftJustify;
      SpDbgridContract.FieldByName('TotalAmount').OnChange :=  SpDbgridContractTotalAmountChange
  //  end;
end;

procedure TFrContract.SpDbgridContractTotalAmountChange(
  Sender: TField);
begin
  inherited;
  ShowMessage('s');
   if length(SpDbgridContract.FieldByName('TotalAmount').AsString) >3 then
     dbeViwTotalAmountCNT.SelText := AddSeprator(SpDbgridContract.FieldByName('TotalAmount').AsString,length(SpDbgridContract.FieldByName('TotalAmount').AsString) div 3)
  else   dbeViwTotalAmountCNT.SelText := SpDbgridContract.FieldByName('TotalAmount').AsString;
end;
procedure TFrContract.edtTotalAmountChange(Sender: TObject);
begin
  inherited;
  if length(SpDbgridContract.FieldByName('TotalAmount').AsString) >3 then
   edtTotalAmount.Text := AddSeprator(SpDbgridContract.FieldByName('TotalAmount').AsString,length(SpDbgridContract.FieldByName('TotalAmount').AsString) div 3)
  else    edtTotalAmount.Text := SpDbgridContract.FieldByName('TotalAmount').AsString;

end;

procedure TFrContract.edtAmountChange(Sender: TObject);
begin
  inherited;
  if length(SpDbgridContract.FieldByName('Amount').AsString) >3 then
    edtAmount.Text := AddSeprator(SpDbgridContract.FieldByName('Amount').AsString,length(SpDbgridContract.FieldByName('Amount').AsString) div 3)
  else   edtAmount.Text := SpDbgridContract.FieldByName('Amount').AsString;
  if SpDbgridContract.FieldByName('Amount').AsString <> '' then
  edtAmountAlphabet.Text := Number2Str(SpDbgridContract.FieldByName('Amount').AsString);
end;

procedure TFrContract.SpDbgridContractBeforePost(
  DataSet: TDataSet);
begin
if (_EditContract = false)and(SpDbgridContract.State in [dsinsert]) then
    if MessageDlg('»⁄œ «“ À»   «„ò«‰ ÊÌ—«Ì‘ „»·€ ﬁ—«—œ«œ ‰œ«—Ìœ ° «ÿ·«⁄«  À»  ‘Êœ ø',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  Abort;
  SpDbgridContract.FieldByName('CustomerID').AsInteger:=gCustomerID;
{  Select_customer_By_CustomerID.Edit;
  Select_customer_By_CustomerIDCustomerStatusID.AsInteger:=2;
  Select_customer_By_CustomerID.Post;}

end;
procedure TFrContract.SpDbgridContractAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SetdbgChequePay;
  SetdbgPayByCash;
  loadGuarantee;
end;


procedure TFrContract.SetdblProducts;
var dsdblSrchProduct :TDataSource;
begin
    dsdblSrchProduct := TDataSource.Create(Self);
    SetQueryDataSet(dsdblSrchProduct,qrydblsrchProduct,qryTextSetdblProducts+IntToStr(gCustomerID),Dm.YeganehConnection);
     if qrydblsrchProduct.RecordCount >0 then
      SetDbLookUp(dblsrchProductID,dsdblSrchProduct,'Producttitle','ProductID');
end;



procedure TFrContract.SetdblContractType;
var  dsdblsrchContractType :TDataSource;
begin
    dsdblsrchContractType            := TDataSource.Create(Self);

    SetQueryDataSet(dsdblsrchContractType,qrydblsrchContractType
                                          ,'select  ContractTypetitle, ContractTypeID,ContractTypeCode from ContractType where ContractTypeID in (select ContractTypeId from UserTypeContractType where UserTypeID =  '+IntToStr(_UserTypeID)+') or '+IntToStr(_UserTypeID)+' = 0'
                                                                      ,Dm.YeganehConnection);

     if qrydblsrchContractType.RecordCount >0 then
     begin
         qrydblsrchContractType.Fields[0].Alignment:=   taRightJustify;
         SetDbLookUp(dblsrchContractType,dsdblsrchContractType,'ContractTypetitle','ContractTypeID');
     end;

end;


procedure TFrContract.BtnCancelClick(Sender: TObject);
begin
  inherited;
  if not pnlEdit.Minimized  then
    begin
        pnlEdit.Minimized := True;
    end;

{
  with  SpDbgridContract do
 if state in [dsedit,dsinsert] then  Cancel;
close;}
end;

procedure TFrContract.refreshData;
begin
  inherited;
with Select_customer_By_CustomerID do
 begin
   Close;
   Parameters.ParamByName('@customerid').Value:=gCustomerID;
   Open;
 end;
end;

procedure TFrContract.btnDelClick(Sender: TObject);
var id,CustomerID :Integer;
begin
   inherited;
   if (_EditContract = false) then
   begin
     ShowMessage('‘„« œ” —”Ì »Â Õ–› ﬁ—«—œ«œ ‰œ«—Ìœ');
     Abort;
   end;

   if MessageDlg('¬Ì« »—«Ì Õ–› «ÿ„Ì‰«‰ œ«—Ìœ ø',mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
      SpDbgridContract.Prior;
      gid := SpDbgridContract.FieldByName('ContractID').Value;
      SpDbgridContract.Next;
      Qry_SetResult('delete from ContractCheque where ContractID='+SpDbgridContract.FieldByName('ContractID').AsString,dm.YeganehConnection); //SpDbgridContract.Delete;
      Qry_SetResult('delete from contract where ContractID='+SpDbgridContract.FieldByName('ContractID').AsString,dm.YeganehConnection); //SpDbgridContract.Delete;
      Search_contract;
        if SpDbgridContract.RecordCount = 0 then
          begin
            Select_customer_By_CustomerID.Edit;
            Select_customer_By_CustomerIDCustomerStatusID.Value :=    1;
            Select_customer_By_CustomerID.Post;
            if dm.Select_Customer_By_CustomerID.Active then
            dm.Select_Customer_By_CustomerID.Requery;
            if Dm.Customer.Active then
                  begin
                    CustomerID := Dm.CustomerCustomerID.Value;
                    Dm.Customer.Close;
                    Dm.Customer.Open;                    
                    Dm.Customer.Locate('CustomerId',CustomerID,[]);
                  end;
          end;
   end;
end;

procedure TFrContract.btnAddClick(Sender: TObject);
begin
  inherited;
  if not (SpDbgridContract.State in [dsinsert]) then
  SpDbgridContract.Append;
  SpDbgridContractSignUpDate.AsString := _Today;
  OpenEditAddForm;
end;

procedure TFrContract.N1Click(Sender: TObject);
begin
  inherited;
dbgContractsList.CustomizePrint;
end;

procedure TFrContract.N2Click(Sender: TObject);
begin
  inherited;
dbgContractsList.ExportToWord;

end;

procedure TFrContract.Excel1Click(Sender: TObject);
begin
  inherited;
dbgContractsList.ExportToExcel;
end;

procedure TFrContract.FormShow(Sender: TObject);
begin
  inherited;
    SetColorForm ;
  grbCustomer.Caption := ' «ÿ·«⁄«  ‘—ò  / ”«“„«‰  : '+  Select_customer_By_CustomerIDCompanyName.AsString;
    Dm.Marketer.Close;
    Dm.Marketer.SQL.Clear;
    Dm.Marketer.SQL.Add('SELECT * FROM marketer');
    Dm.Marketer.SQL.Add('WHERE IsActive_=1');
    Dm.Marketer.Open;

    DBNCheckInsert.DataSource := dbgChequePay.DataSource;
    DBNCheckDelete.DataSource := dbgChequePay.DataSource;
    DBNCheckEdit.DataSource := dbgChequePay.DataSource;
    DBNCheckPost.DataSource := dbgChequePay.DataSource;
    DBNCheckCancel.DataSource := dbgChequePay.DataSource;
          
    DBNCashInsert.DataSource := dbgPayByCash.DataSource;
    DBNCashDelete.DataSource := dbgPayByCash.DataSource;
    DBNCashEdit.DataSource := dbgPayByCash.DataSource;
    DBNCashPost.DataSource := dbgPayByCash.DataSource;
    DBNCashCancel.DataSource := dbgPayByCash.DataSource;

end;

procedure TFrContract.dbgContractsListDblClick(Sender: TObject);
begin
  inherited;
  btnEditClick(Sender);
end;

procedure TFrContract.btnSearchClick(Sender: TObject);
begin
  Search_contract;
end;


procedure TFrContract.btnEditClick(Sender: TObject);
begin
  inherited;
  if (_EditContract = false) then
  begin
  ShowMessage('‘„« œ” —”Ì »Â ÊÌ—«Ì‘ «Ì‰ ›—„ ‰œ«—Ìœ');
  Abort;
  end;

  SpDbgridContract.Edit;
  OpenEditAddForm;
end;

procedure TFrContract.OpenEditAddForm;
var CustomerID:Integer;
begin
//  if frContractAdd=nil then
//          frContractAdd:=TfrContractAdd.create(Self);
//  frContractAdd.Show;
  with TfrContractAdd.create(Self) do
      ShowModal;

  if SpDbgridContract.Modified then
  begin
  //  try
      gID:=0;
      with  SpDbgridContract do
      begin
         Post;
         gId := fieldByName('ContractID').Value;
      end;
        Search_contract;
        dbgContractsList.SetFocus;
        if SpDbgridContract.RecordCount = 1 then
          begin
            Select_customer_By_CustomerID.Edit;
            Select_customer_By_CustomerIDCustomerStatusID.Value :=    2;
            Select_customer_By_CustomerID.Post;
            if dm.Select_Customer_By_CustomerID.Active then
                  dm.Select_Customer_By_CustomerID.Requery;
            if Dm.Customer.Active then
                  begin
                    CustomerID := Dm.CustomerCustomerID.Value;
                    Dm.Customer.Close;
                    Dm.Customer.Open;
                    Dm.Customer.Locate('CustomerId',CustomerID,[]);
                  end;

          end;
        ShowMessage('«ÿ·«⁄«  À»  ‘œ');

//     except
//     ShowMessage('Œÿ« œ— À»  «ÿ·«⁄« ');
//     end;

  end else SpDbgridContract.Cancel;

end;

procedure TFrContract.btnShowContractWordClick(Sender: TObject);
var Path :String;
begin
  inherited;
    if not (SpDbgridContract.FieldByName('ContractText').IsNull)  then
    begin
    Path := Directory+'Contract'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(SpDbgridContract.FieldByName('EndDate').AsString,'/','-')+'.doc';
    if LoadImageField(SpDbgridContract.FieldByName('ContractText'),path) then  dm.OpenWordFile(path);

     if UpperCase(MssMessage1.execute('¬Ì«  €ÌÌ—«  œ— ›«Ì· Ê—œ «⁄„«· ‘Êœø'))=UpperCase('Ok') then
     begin
       SpDbgridContract.DisableControls;
         if (SpDbgridContract.State<>dsEdit) or (SpDbgridContract.State<>dsInsert) then
              SpDbgridContract.Edit;
         SpDbgridContractContractText.LoadFromFile(Path);
         SpDbgridContract.Post;
       SpDbgridContract.EnableControls;
     end;

    end
    else
    ShowMessage('›«Ì· ÅÌÊ”  „ÊÃÊœ ‰Ì” ');
end;

procedure TFrContract.pnlEditAfterMinimized(Sender: TxpPanel;
  ASizeRestored: Boolean);
begin
  inherited;
  if  not pnlEdit.Minimized then pnlGuarantee.Minimized := true;
  if SpDbgridContract.RecordCount = 0 then pnlEdit.Minimized  :=True;
  if (not pnlEdit.Minimized) and (SpDbgridContract.RecordCount <> 0 ) then
    if not _EditContract then
    begin
       ShowMessage('«„ò«‰ À»  Ê ÊÌ—«Ì‘ Å—œ«Œ  »—«Ì ‘„« ÊÃÊœ ‰œ«—œ');
    end;

end;



procedure TFrContract.btnTaxFishImageClick(Sender: TObject);
var Path :String;
begin
  inherited;
  Path := Directory+'TaxFish'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(SpDbgridContract.FieldByName('EndDate').AsString,'/','-')+'.jpg';
  if LoadImageField(SpDbgridContract.FieldByName('TaxFish'),path) then ShellExecute(0,'open',pchar(path),'',nil,SW_HIDE)

end;

Function TFrContract.LoadImageField(Field:TField; Path: String):Boolean;
begin
   if not Field.IsNull then
    begin
           TBlobField(Field).SaveToFile(path);
           Result := True;
    end else
    begin
      ShowMessage('›«Ì·Ì ÊÃÊœ  ‰œ«—œ');
      Result := False
    end;
end;


//-----------------------------------------------------------------------------------------------Panel Pays Set Grids PayByCash/PayByCheque
procedure TFrContract.SetdbgChequePay;
var DsdbgChequePay : TDataSource;
    ContractId :integer;
begin
 {
    DsdbgChequePay  :=  TDataSource .Create(nil);

    if SpDbgridContract.FieldByName('ContractId').IsNull then ContractId := 0 else ContractId := SpDbgridContract.FieldByName('ContractId').Value;

         SetQueryDataSet(DsdbgChequePay,qrydbgChequePay
                                          ,'select * from ContractCheque where ContractId = '+IntToStr(ContractId)
                                                                      ,Dm.YeganehConnection);

          qrydbgChequePay .BeforePost :=    dbgPayByCashBeforePost;
          dbgChequePay    .DataSource :=    DsdbgChequePay;
          qrydbgChequePay .FieldByName('date').EditMask := '9999/99/99;1;';
  // end;
      }
      adoCheckPay.Close;
      adoCheckPay.SQL.Text := 'select * from ContractCheque WHERE  ContractId = '+SpDbgridContractContractID.AsString;
      if SpDbgridContractContractID.AsInteger>0 then
         adoCheckPay.Open;


end;

procedure TFrContract.SetdbgPayByCash;
var DsdbgPayByCash : TDataSource;
     ContractID   :Integer;
begin
    DsdbgPayByCash := TDataSource.Create(nil);
//    if not SpDbgridContract.FieldByName('ContractId').IsNull then
//    begin
   { if SpDbgridContract.FieldByName('ContractId').IsNull then ContractId := 0 else ContractId := SpDbgridContract.FieldByName('ContractId').Value;

             SetQueryDataSet(DsdbgPayByCash,qrydbgPayByCash
                                          ,'select * from ContractPayByCash where ContractId = '+IntToStr(ContractID)
                                                                      ,Dm.YeganehConnection);

          qrydbgPayByCash .BeforePost := dbgPayByCashBeforePost;
          dbgPayByCash    .DataSource :=    DsdbgPayByCash;
          qrydbgPayByCash.FieldByName('date').EditMask := '9999/99/99;1;';    }
  // end;

      adoCashPay.Close;
      adoCashPay.SQL.Text := 'select * from ContractPayByCash  WHERE  ContractId = '+SpDbgridContractContractID.AsString;
      if SpDbgridContractContractID.AsInteger>0 then
         adoCashPay.Open;

end;
 {
procedure TFrContract.dbgChequePayBeforePost(DataSet: TDataSet);
begin
    DataSet.FieldByName('ContractID').Value := SpDbgridContract.FieldByName('ContractID').Value;
end;
}
procedure TFrContract.dbgPayByCashBeforePost(DataSet: TDataSet);
begin
    DataSet.FieldByName('ContractID').Value := SpDbgridContract.FieldByName('ContractID').Value;
end;
procedure TFrContract.dbgChequePayColExit(Sender: TObject);
begin
  inherited;

end;

//-----------------------------------------------------------------------------------------------Panel Pays Set Grids PayByCash/PayByCheque


//----------------------------------------------------------------------Panel Pays Add&Load Image
procedure TFrContract.btnAddByCashImageClick(Sender: TObject);
begin
  inherited;
  try
     {qrydbgPayByCash.FieldByName('FileType').Value := AddImageField(qrydbgPayByCash.FieldByName('FishImage'),'All Images|*.tif;*.tiff;*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|GIF Images|*.gif|TIF Images|*.tif;*.tiff|JPEG Images|*.jpg;*.jpeg|Bitmaps|*.bmp|Icons|*.ico|Metafiles|*.wmf;*.emf|All Files|*.*');
     qrydbgPayByCash.Post; }
     adoCashPay.FieldByName('FileType').Value := AddImageField(adoCashPay.FieldByName('FishImage'),'All Images|*.tif;*.tiff;*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|GIF Images|*.gif|TIF Images|*.tif;*.tiff|JPEG Images|*.jpg;*.jpeg|Bitmaps|*.bmp|Icons|*.ico|Metafiles|*.wmf;*.emf|All Files|*.*');
     adoCashPay.Post;
  except
  end;
end;
procedure TFrContract.btnAddChequeImageClick(Sender: TObject);
begin
  inherited;
  try
     { qrydbgChequePay.FieldByName('FileType').Value := AddImageField(qrydbgChequePay.FieldByName('ChequeImage'),'All Images|*.tif;*.tiff;*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|GIF Images|*.gif|TIF Images|*.tif;*.tiff|JPEG Images|*.jpg;*.jpeg|Bitmaps|*.bmp|Icons|*.ico|Metafiles|*.wmf;*.emf|All Files|*.*');
      qrydbgChequePay.Post; }
      adoCheckPay.FieldByName('FileType').Value := AddImageField(adoCheckPay.FieldByName('ChequeImage'),'All Images|*.tif;*.tiff;*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|GIF Images|*.gif|TIF Images|*.tif;*.tiff|JPEG Images|*.jpg;*.jpeg|Bitmaps|*.bmp|Icons|*.ico|Metafiles|*.wmf;*.emf|All Files|*.*');
      adoCheckPay.Post;
  Except
  end;
end;

procedure TFrContract.btnViwByCashImageClick(Sender: TObject);
var Path :String;
begin
  inherited;
  {
  Path := Directory+'TaxFish'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(qrydbgPayByCash.FieldByName('date').AsString,'/','-')+qrydbgPayByCash.FieldByName('FileType').AsString;
  if LoadImageField(qrydbgPayByCash.FieldByName('FishImage'),path) then ShellExecute(0,'open',pchar(path),'',nil,SW_HIDE)
  }
  Path := Directory+'TaxFish'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(adoCashPay.FieldByName('date').AsString,'/','-')+adoCashPay.FieldByName('FileType').AsString;
  if LoadImageField(adoCashPay.FieldByName('FishImage'),path) then ShellExecute(0,'open',pchar(path),'',nil,SW_HIDE)
end;

procedure TFrContract.btnViwChequeImageClick(Sender: TObject);
var Path :String;
begin
  inherited;
  {
  Path := Directory+'Cheque'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(qrydbgChequePay.FieldByName('date').AsString,'/','-')+qrydbgChequePay.FieldByName('FileType').AsString;
  if LoadImageField(qrydbgChequePay.FieldByName('ChequeImage'),path) then ShellExecute(0,'open',pchar(path),'',nil,SW_HIDE);
  }
  Path := Directory+'Cheque'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(adoCheckPay.FieldByName('date').AsString,'/','-')+adoCheckPay.FieldByName('FileType').AsString;
  if LoadImageField(adoCheckPay.FieldByName('ChequeImage'),path) then ShellExecute(0,'open',pchar(path),'',nil,SW_HIDE);
end;
//--------------------------------------------------------------------Panel Pays Add&Load Image

//----------------------------------------------------------------------------------------------------Panel Pays Guarantee actions
procedure TFrContract.loadGuarantee;
var
    dsrGuarantee :TDataSource;
    ContractId :integer;
begin
    setGuaranteeType;
    dsrGuarantee := TDataSource.Create(nil);
//    if SpDbgridContract.FieldByName('ContractID').AsString <> '' then
    if SpDbgridContract.FieldByName('ContractId').IsNull then ContractId := 0 else ContractId := SpDbgridContract.FieldByName('ContractId').Value;

    SetQueryDataSet(dsrGuarantee,QryGuarantee
                                          ,'Select * from ContractGuarantee where ContractId = '+ IntToStr(ContractId)
                                                                      ,Dm.YeganehConnection);
    QryGuarantee.BeforePost := dbgPayByCashBeforePost;

    rdgSake           .DataSource := dsrGuarantee;
    dblGuaranteeType  .DataSource := dsrGuarantee;
    edbStartDate      .DataSource := dsrGuarantee;
    dbeEndDate        .DataSource := dsrGuarantee;
//    dbeGuaranteeAmount.DataSource := dsrGuarantee;

   if not QryGuarantee.FieldByName('Amount').IsNull then
    begin
           if length(QryGuarantee.FieldByName('Amount').AsString) >3 then
          edtGuaranteeAmount.Caption := AddSeprator(QryGuarantee.FieldByName('Amount').AsString,length(QryGuarantee.FieldByName('Amount').AsString) div 3)
          else   edtGuaranteeAmount.Caption := QryGuarantee.FieldByName('Amount').AsString;
    end else edtGuaranteeAmount.Caption:= '';

end;

procedure TFrContract.SetGuaranteeType;
var qrydblGuaranteeType :TADOQuery;
    dsrdblGuaranteeType : TDataSource;
begin
      dsrdblGuaranteeType := TDataSource.Create(nil);
      SetQueryDataSet(dsrdblGuaranteeType,qrydblGuaranteeType,'Select Title,GuaranteeTypeID from GuaranteeType',Dm.YeganehConnection);
      qrydblGuaranteeType.Fields[0].Alignment :=  taRightJustify;
      dsrdblGuaranteeType.DataSet := qrydblGuaranteeType;
      SetDbLookUp(dblGuaranteeType,dsrdblGuaranteeType,'Title','GuaranteeTypeID');
end;

procedure TFrContract.pnlGuaranteeAfterMinimized(Sender: TxpPanel;
  ASizeRestored: Boolean);
begin
  inherited;
  if not pnlGuarantee.Minimized  then   pnlEdit.Minimized := True;
  if SpDbgridContract.RecordCount = 0 then pnlGuarantee.Minimized  :=True;
  if (pnlGuarantee.Minimized)and (QryGuarantee.State in [dsinsert,dsEdit])
              then if edtGuaranteeAmount.Caption = '' then   QryGuarantee.Cancel else QryGuarantee.Post;
  Panel3.Height := pnlGuarantee.Height +44;
end;

procedure TFrContract.btnGuaranteeImageLoadClick(Sender: TObject);
var Path :String;
begin
  inherited;
  Path := Directory+'Guarantee'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(QryGuarantee.FieldByName('EndDate').AsString,'/','-')+QryGuarantee.FieldByName('FileType').AsString;
  if LoadImageField(QryGuarantee.FieldByName('GuaranteeImage'),path) then ShellExecute(0,'open',pchar(path),'',nil,SW_HIDE)
end;

procedure TFrContract.btnAddGuaranteeImageClick(Sender: TObject);
begin
  inherited;
  try
     QryGuarantee.FieldByName('FileType').Value := AddImageField(QryGuarantee.FieldByName('GuaranteeImage'),'All Images|*.tif;*.tiff;*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|GIF Images|*.gif|TIF Images|*.tif;*.tiff|JPEG Images|*.jpg;*.jpeg|Bitmaps|*.bmp|Icons|*.ico|Metafiles|*.wmf;*.emf|All Files|*.*');
     QryGuarantee.Post;
  except
  end;
end;

procedure TFrContract.pnlGuaranteeExit(Sender: TObject);
begin
  inherited;
  if QryGuarantee.Modified then QryGuarantee.Post;
end;
//----------------------------------------------------------------------------------------------------Panel Pays Guarantee actions


procedure TFrContract.AexitExecute(Sender: TObject);
begin
      close;
     
end;

procedure TFrContract.SetComponentsDataSource;
var i : Integer;
begin
   for i:=0 to ComponentCount-1 do
   if pos('CNT',Components[i].Name) > 0 then
    begin
         if Components[i] is TDBEdit then
                TDBEdit(Components[i]).DataSource := DsdbgContract
         else if Components[i] is TDBLookupComboBox then
                TDBLookupComboBox(Components[i]).DataSource := DsdbgContract
         else if Components[i] is TDBMemo then
                TDBMemo(Components[i]).DataSource := DsdbgContract;
    end

end;

procedure TFrContract.dbeViwTotalAmountCNTChange(Sender: TObject);
begin
  inherited;
  edtTotalAmount.Text := SpDbgridContract.FieldByName('TotalAmount').AsString;
end;

procedure TFrContract.dbeViwAmountCNTChange(Sender: TObject);
begin
  inherited;
  edtAmount.Text := SpDbgridContract.FieldByName('Amount').AsString;
end;

procedure TFrContract.edtGuaranteeAmountChange(Sender: TObject);
begin
  inherited;


  if (StrToIntDef(edtGuaranteeAmount.Caption,0) <> 0) then
  begin
  if not (QryGuarantee.State in [dsedit,dsinsert]) then QryGuarantee.Edit;
     QryGuarantee.FieldByName('Amount').Value := edtGuaranteeAmount.Caption
  end
  //else if (edtGuaranteeAmount.Text = '0' )or(edtGuaranteeAmount.Text = '') then QryGuarantee.FieldByName('Amount').Value := 0;


end;

procedure TFrContract.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (SpDbgridContract.State in [dsinsert])or (QryGuarantee.State in [dsinsert,dsedit])  or (adoCashPay.State in [dsinsert,dsedit] )
                    or (adoCheckPay.State in [dsinsert,dsedit]) then
      begin
        if SpDbgridContract.State in [dsinsert,dsedit] then SpDbgridContract.Cancel ;
        if QryGuarantee.State     in [dsinsert,dsedit] then QryGuarantee.Cancel ;
        if adoCashPay.State  in [dsinsert,dsedit] then adoCashPay.Cancel;
        if adoCheckPay.State  in [dsinsert,dsedit] then adoCheckPay.Cancel ;
        Abort;
      end;


end;

procedure TFrContract.DelgrdRecordExecute(Sender: TObject);
begin
  inherited;
  if dbgContractsList.Focused then
      btnDelClick(Sender);
end;

procedure TFrContract.dbgContractsListNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  // Amin 1391/11/28 Start
   if not (SpDbgridContract.FieldByName('ContractText').IsNull) then
            Color:= TColor(RGB(85, 232, 105));
            //Color:=$00ffd683 ;
  // Amin 1391/11/23 End

  if not (SpDbgridContract.FieldByName('ContractExcell').IsNull) then
            Color:= TColor(RGB(250, 170, 49));

  if not (SpDbgridContract.FieldByName('TaxFish').IsNull) then
            Color:= $00ffd683;

  if ((not SpDbgridContract.FieldByName('TaxFish').IsNull) and (not SpDbgridContract.FieldByName('ContractExcell').IsNull) and (not SpDbgridContract.FieldByName('ContractText').IsNull))
      or
      ((not SpDbgridContract.FieldByName('TaxFish').IsNull) and (not SpDbgridContract.FieldByName('ContractText').IsNull))
      or
      ((not SpDbgridContract.FieldByName('ContractText').IsNull) and (not SpDbgridContract.FieldByName('ContractExcell').IsNull))
      or
      ((not SpDbgridContract.FieldByName('ContractExcell').IsNull) and (not SpDbgridContract.FieldByName('TaxFish').IsNull))
      then
      Color:=$00d4acfd ;
end;

procedure TFrContract.dbgPayByCashMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button= mbright then
   if (dbgPayByCash.DataSource.DataSet.State in [dsinsert,dsedit]) then
      dbgPayByCash.DataSource.DataSet.fieldByName('date').AsString := MssCalendarPro1.Execute('/');
end;

procedure TFrContract.dbgChequePayMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button= mbright then
   if (dbgChequePay.DataSource.DataSet.State in [dsinsert,dsedit]) then
      dbgChequePay.DataSource.DataSet.fieldByName('date').AsString := MssCalendarPro1.Execute('/');
end;

procedure TFrContract.dbgPayByCashKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=119) and (dbgPayByCash.DataSource.DataSet.State in [dsinsert,dsedit]) then
     dbgPayByCash.DataSource.DataSet.fieldByName('date').AsString := MssCalendarPro1.Execute('/');
end;

procedure TFrContract.dbgChequePayKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key=119) and (dbgChequePay.DataSource.DataSet.State in [dsinsert,dsedit]) then
      dbgChequePay.DataSource.DataSet.fieldByName('date').AsString := MssCalendarPro1.Execute('/');
end;

procedure TFrContract.dbgChequePayNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   if not dbgChequePay.DataSource.DataSet.FieldByName('ChequeImage').IsNull then
      Color:= clSkyBlue;
end;

procedure TFrContract.dbgPayByCashNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if not dbgPayByCash.DataSource.DataSet.FieldByName('FishImage').IsNull then
      Color:= clSkyBlue;
end;

procedure TFrContract.pnlGuaranteeAfterMaximized(Sender: TxpPanel;
  ASizeRestored: Boolean);
begin
  inherited;
   Panel3.Height := pnlGuarantee.Height +44;
end;

procedure TFrContract.adoCheckPayBeforePost(DataSet: TDataSet);
begin
  inherited;
   if adoCheckPayContractID.AsInteger <1 then
      adoCheckPayContractID.AsInteger := SpDbgridContractContractID.AsInteger;
end;

procedure TFrContract.adoCashPayBeforePost(DataSet: TDataSet);
begin
  inherited;
   if adoCashPayContractID.AsInteger <1 then
      adoCashPayContractID.AsInteger := SpDbgridContractContractID.AsInteger;
end;

procedure TFrContract.adoCheckPayPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
   ShowMessage('·ÿ›« «ÿ·«⁄«  —« ’ÕÌÕ Ê«—œ ò‰Ìœ');
   Abort;
end;

procedure TFrContract.adoCashPayPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
   ShowMessage('·ÿ›« «ÿ·«⁄«  —« ’ÕÌÕ Ê«—œ ò‰Ìœ');
   Abort;
end;

procedure TFrContract.BitBtn2Click(Sender: TObject);
var Path :String;
begin
  inherited;
   if not (SpDbgridContract.FieldByName('ContractExcell').IsNull)  then
   begin
      Path := Directory+'Contract'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(SpDbgridContract.FieldByName('EndDate').AsString,'/','-')+'.xls';
      if LoadImageField(SpDbgridContract.FieldByName('ContractExcell'),path) then
      begin
      dm.OpenExcelFile(path);

         if UpperCase(MssMessage1.execute('¬Ì«  €ÌÌ—«  œ— ›«Ì· «ò”· «⁄„«· ê—œœ ø'))=UpperCase('Ok') then
         begin
            try
            SpDbgridContract.DisableControls;
            if (SpDbgridContract.State<>dsEdit) or (SpDbgridContract.State<>dsInsert) then
              SpDbgridContract.Edit;
            TBlobField(SpDbgridContract.FieldByName('ContractExcell')).LoadFromFile(Path);
            SpDbgridContract.Post;
            SpDbgridContract.EnableControls;
            except
            SpDbgridContract.EnableControls;
            end;
         end;

      end;
   end
   else
   ShowMessage('›«Ì· ÅÌÊ”  „ÊÃÊœ ‰Ì” ');
end;

procedure TFrContract.BitBtn3Click(Sender: TObject);
var Path :String;
begin
   if not (SpDbgridContract.FieldByName('TaxFish').IsNull)  then
   begin
   Path := Directory+'Contract'+SpDbgridContract.FieldByName('ContractID').AsString+Replace(SpDbgridContract.FieldByName('EndDate').AsString,'/','-')+'.jpg';
      if LoadImageField(SpDbgridContract.FieldByName('TaxFish'),path) then
      begin
         if _IsWinServer then
         begin
          try
              ImageForm:=TImageForm.Create(Application);
              ImageForm.Image1.Picture.LoadFromFile(path);
              ImageForm.ShowModal;
          except on e:exception do
              ShowMessage(e.Message);
          end;
        end
        else
        ShellExecute(0,'open',pchar(Trim(path) ),'',nil,SW_HIDE);
      end;
  end
  else
  ShowMessage('›«Ì· ÅÌÊ”  „ÊÃÊœ ‰Ì” ');
end;

procedure TFrContract.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 806)  or (NewHeight < 748) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;


end;

procedure TFrContract.SetColorForm;
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

  pnlGuarantee.StartColor := _Color1 ;
  pnlGuarantee.EndColor   := _Color2 ;

  pnlGuarantee.TitleStartColor :=  _Color3;
  pnlGuarantee.TitleEndColor   :=  _Color4;

  pnlEdit.StartColor := _Color1 ;
  pnlEdit.EndColor   := _Color2 ;

  pnlEdit.TitleStartColor :=  _Color3;
  pnlEdit.TitleEndColor   :=  _Color4;



end;

end.






