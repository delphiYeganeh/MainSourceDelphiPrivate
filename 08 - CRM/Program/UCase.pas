unit UCase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, YWhereEdit, DBCtrls,
  Mask, ComCtrls, xpPages, ExtCtrls,ADODB, Grids, DBGrids, YDbgrid, xpPanel,
  Buttons,YShamsiDate, Menus;

type
  TfrCase = class(TMBaseForm)
    xpPanel1: TxpPanel;
    dbgCase: TYDBGrid;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    btnDelBR2: TBitBtn;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnAddTask: TBitBtn;
    btnAttachment: TBitBtn;
    grbCase: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label36: TLabel;
    dblProduct: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    dbeCaseTitle: TDBEdit;
    dblCaseType: TDBLookupComboBox;
    dblPriority: TDBLookupComboBox;
    dblCustomer: TDBLookupComboBox;
    edtCustomer: TYWhereEdit;
    dblCaseOriginal: TDBLookupComboBox;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    Label4: TLabel;
    dblProductId: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    edtCustomerId: TYWhereEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dblCaseTypeId: TDBLookupComboBox;
    dblCasePriorityId: TDBLookupComboBox;
    btnSave: TBitBtn;
    SpSelect_Cases: TADOStoredProc;
    SpSelect_CasesCaseID: TLargeintField;
    SpSelect_CasesCaseTitle: TWideStringField;
    SpSelect_CasesComment: TWideStringField;
    SpSelect_CasesProductId: TIntegerField;
    SpSelect_CasesProductVersion: TIntegerField;
    SpSelect_CasesCaseTypeID: TWordField;
    SpSelect_CasesCasePriorityId: TWordField;
    SpSelect_CasesCustomerID: TIntegerField;
    SpSelect_CasesCaseOrigiranlId: TWordField;
    SpSelect_CasesRegisterDate: TWideStringField;
    SpSelect_CasesRegisterUserID: TIntegerField;
    SpSelect_CasesProductTitle: TWideStringField;
    SpSelect_CasesCaseTypeTitle: TWideStringField;
    SpSelect_CasesCasePriorityTitle: TWideStringField;
    SpSelect_CasesCompanyName: TWideStringField;
    SpSelect_CasesUserName: TWideStringField;
    DsSelect_Cases: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    word1: TMenuItem;
    SpSelect_CasesCompleted: TBooleanField;
    SpSelect_CasesCompleteDate: TWideStringField;
    SpSelect_CasesStatus: TStringField;
    chkCompleted: TCheckBox;
    Panel1: TPanel;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    SpSelect_CasesCompleteComment: TWideStringField;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Customer: TADOTable;
    CustomerCustomerID: TAutoIncField;
    CustomerCompanyName: TWideStringField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SBCityID: TSpeedButton;
    ADOTable1: TADOTable;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    CustomerCode: TStringField;
    Edit1: TEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    procedure btnDelBRClick(Sender: TObject);
    procedure dbgCaseDblClick(Sender: TObject);
    procedure btnAddTaskClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dblCustomerCloseUp(Sender: TObject);
    procedure edtCustomerChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DsSelect_CasesDataChange(Sender: TObject; Field: TField);
    procedure dblCasePriorityIdCloseUp(Sender: TObject);
    procedure dblCaseTypeIdCloseUp(Sender: TObject);
    procedure dblCaseTypeIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpSelect_CasesAfterPost(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure word1Click(Sender: TObject);
    procedure SpSelect_CasesCalcFields(DataSet: TDataSet);
    procedure edtCustomerExit(Sender: TObject);
    procedure btnAttachmentClick(Sender: TObject);
    procedure SBCityIDClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
    qrydblCustomer :TADOQuery;

    procedure SetdblCustomer;
    function CheckTasksExits(CaseId : Integer): Boolean;
    Procedure MakeFilter;
    Function MakeFilterStr:String;
  public
    { Public declarations }
    Constructor create(Aowner:TComponent;OpenType :Boolean);reintroduce;virtual;//Opentype = true : Show all ,False : Just User
  end;

var
  frCase: TfrCase;

implementation

uses dmu, BusinessLayer, UCaseAdd, UTask, Uattachments;

{$R *.dfm}

procedure TfrCase.btnDelBRClick(Sender: TObject);
var id :Integer;
begin
  inherited;
if SpSelect_Cases.RecordCount > 0 then
if MessageDlg('��� ���� ��� ������� ����� �',mtConfirmation,[mbyes,mbno],0)=mryes then
    if not CheckTasksExits(SpSelect_CasesCaseID.Value) then
    with SpSelect_Cases do
    begin
        Prior;
        Id := SpSelect_CasesCaseID.Value;
        Next;
        Qry_SetResult('Delete from Cases Where CaseId = '+ IntToStr(SpSelect_CasesCaseID.Value),dm.YeganehConnection);
        Requery;
        Locate('CaseId',id,[]);
        btnDelBR2 .Enabled := RecordCount > 0;
        btnEdit   .Enabled := RecordCount > 0;
        btnAddTask.Enabled := RecordCount > 0;
        btnAttachment.Enabled:= RecordCount > 0;
       end
    else
        ShowMessage('��� ���� ���� ��� ��� ���� ��� ����');
    end;

procedure TfrCase.dbgCaseDblClick(Sender: TObject);
begin
  inherited;
  with  TfrCaseAdd.Create(Self,SpSelect_CasesCaseID.Value,SpSelect_CasesCaseTitle.Text,SpSelect_CasesProductId.Value,SpSelect_CasesCaseTypeID.Value
                                ,  SpSelect_CasesRegisterUserID.value,SpSelect_CasesCompleted.value,SpSelect_CasesComment.Text,SpSelect_CasesCasePriorityId.AsInteger) do
  ShowModal;
end;

procedure TfrCase.btnAddTaskClick(Sender: TObject);
begin
  inherited;
  with  TfrCaseAdd.Create(Self,SpSelect_CasesCaseID.Value,SpSelect_CasesCaseTitle.Text,SpSelect_CasesProductId.Value,SpSelect_CasesCaseTypeID.Value
                                ,SpSelect_CasesRegisterUserID.value,SpSelect_CasesCompleted.value,SpSelect_CasesComment.Text,SpSelect_CasesCasePriorityId.AsInteger) do
            ShowModal;


end;

procedure TfrCase.btnEditClick(Sender: TObject);
begin
  inherited;

if not CheckTasksExits(SpSelect_CasesCaseID.Value) then
begin
  SpSelect_Cases.Edit;
  btnSave       .Enabled := True;
  btnEdit       .Enabled := false;
  grbCase       .Enabled := true;
  btnAdd        .Enabled := false;
  btnDelBR2     .Enabled:=false;
  btnAddTask    .Enabled :=false;
  btnAttachment .Enabled:= False;
  dbeCaseTitle  .SetFocus;
end
else ShowMessage('����� �� ����� ��� ������ ���� ������ ����');

end;
procedure TfrCase.SetdblCustomer;
var dsdblCustomer :TDataSource;
begin
    dsdblCustomer := TDataSource.Create(Self);
    qrydblCustomer := TADOQuery.Create(nil);

    SetQueryDataSet(dsdblCustomer,qrydblCustomer,'Select CustomerId,Companyname+'' - ''+PersonTitle as ListName from Customer',Dm.YeganehConnection);
    qrydblCustomer.Fields[1].Alignment := taRightJustify;
     if qrydblCustomer.RecordCount >0 then
      SetDbLookUp(dblCustomer,dsdblCustomer,'ListName','CustomerId');
end;

procedure TfrCase.dblCustomerCloseUp(Sender: TObject);
begin
  inherited;
  if dblCustomer.KeyValue <> null then
  begin
    edtCustomer.Text := dblCustomer.KeyValue;
  end;
end;

procedure TfrCase.edtCustomerChange(Sender: TObject);
begin
  inherited;
  if qrydblCustomer.Locate('CustomerId',StrToIntDef(edtCustomer.Text,0),[]) then
   begin
    dblCustomer.KeyValue :=  StrToIntDef(edtCustomer.Text,0)
   end
    else begin
        dblCustomer.KeyValue :=  null;
    end;

end;

procedure TfrCase.btnAddClick(Sender: TObject);
begin
  inherited;
  SpSelect_Cases.Append;
  SpSelect_CasesRegisterUserID.Value := _UserID;
  SpSelect_CasesRegisterDate.Value := _Today;
  grbCase.Enabled := True;
  btnSave.Enabled := True;
  btnAdd.Enabled := false;
  btnEdit.Enabled := False;
  btnDelBR2.Enabled:=false;
  btnAddTask.Enabled :=false;
  btnAttachment.Enabled:= False;
  dbeCaseTitle.SetFocus;
  edtCustomer.Clear;
end;

procedure TfrCase.btnSaveClick(Sender: TObject);
var Id:integer;
begin
  inherited;
    SpSelect_Cases.Post;
    Id := SpSelect_CasesCaseID.Value;
    SpSelect_Cases.Requery;
    SpSelect_Cases.Locate('CaseId',id,[]);
    
end;

procedure TfrCase.BitBtn2Click(Sender: TObject);
begin
  inherited;
 ModalResult := mrOk;
end;

procedure TfrCase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if SpSelect_Cases.State in [dsinsert,dsedit] then
      begin
        SpSelect_Cases.Cancel;
        canclose :=false;
        grbCase   .Enabled  := False;
        btnSave   .Enabled  := False;
        btnAdd    .Enabled  := True;
        btnEdit   .Enabled  := True;
        btnDelBR2 .Enabled  := True;
        btnAddTask.Enabled  := True;
        btnAttachment.Enabled:=True;
      end;

end;
function TfrCase.CheckTasksExits(CaseId : Integer): Boolean;
var adoQuery : TADOQuery;
begin
   with TADOQuery.Create(nil) do
   begin
      Connection  := Dm.YeganehConnection;
      SQL.Text    := 'Select CaseId from Tasks where CaseId = '+IntToStr(CaseId);
      Open;
      Result := RecordCount > 0
   end;
end;

procedure TfrCase.DsSelect_CasesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   edit1.Text:='';
//   IF NOT ( SpSelect_Cases.State IN [dsinsert]) then
//   BEGIN
     // IF NOT (SpSelect_CasesCustomerID.IsNull) THEN
      if DBEdit4.Text<>'' then
        edit1.Text:=Qry_GetResult(' SELECT CompanyName FROM Customer WHERE CustomerID ='+DBEdit4.Text ,dm.YeganehConnection)


        //        edit1.Text:=Qry_GetResult(' SELECT CompanyName FROM Customer WHERE CustomerID ='+SpSelect_CasesCustomerID.AsString ,dm.YeganehConnection)
//   END
{  if not SpSelect_CasesCustomerID.IsNull then
  edtCustomer.Text := SpSelect_CasesCustomerID.AsString
  else edtCustomer.Text := ''
  }
end;

procedure TfrCase.dblCasePriorityIdCloseUp(Sender: TObject);
begin
  inherited;
  MakeFilter;
end;

Procedure TfrCase.MakeFilter;
  begin
    with SpSelect_Cases do
    begin
      Filtered :=False;
      Filter := MakeFilterStr;
      Filtered :=True;
    end;
  end;
Function TfrCase.MakeFilterStr:String;
var Str :String;
Begin
  if edtCustomerId.text <> '' then
      str := ' CustomerId = '+edtCustomerId.Text;
  if dblProductId.KeyValue <> null then
    if str <> '' then Str :=Str+' and ProductId = '+ IntToStr(dblProductId.KeyValue)
      else Str := ' ProductId = '+ IntToStr(dblProductId.KeyValue);

  if dblCaseTypeId.KeyValue <> null then
    if str <> '' then Str :=Str+' and CaseTypeID = '+ IntToStr(dblCaseTypeId.KeyValue)
      else Str := ' CaseTypeID = '+ IntToStr(dblCaseTypeId.KeyValue);

  if dblCasePriorityId.KeyValue <> null then
    if str <> '' then Str :=Str+' and CasePriorityId = '+ IntToStr(dblCasePriorityId.KeyValue)
      else Str := ' CasePriorityId = '+ IntToStr(dblCasePriorityId.KeyValue);

  if  chkCompleted.Checked then
    if str <> '' then Str :=Str+' and Completed = 1'
      else Str := ' Completed = 1';

  Result :=Str;
end;
procedure TfrCase.dblCaseTypeIdCloseUp(Sender: TObject);
begin
  inherited;
  MakeFilter;
end;

procedure TfrCase.dblCaseTypeIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  dblCaseTypeIdCloseUp(Sender)

end;

procedure TfrCase.SpSelect_CasesAfterPost(DataSet: TDataSet);
begin
  inherited;
    btnSave.Enabled := False;
    btnAdd.Enabled := True;
    btnEdit.Enabled := True;
    btnDelBR2.Enabled:=True;
    btnAddTask.Enabled :=True;
    btnAttachment.Enabled:= True;
    grbCase.Enabled :=false;
end;

procedure TfrCase.N1Click(Sender: TObject);
begin
  inherited;
  dbgCase.CustomizePrint;
end;

procedure TfrCase.word1Click(Sender: TObject);
begin
  inherited;
  dbgCase.ExportToWord;
end;

constructor TfrCase.create(Aowner: TComponent; OpenType: Boolean);
begin
 inherited create(AOwner);
    SetdblCustomer;
    with dm do
    begin
      tblCaseType     .Open;
      tblCaseOriginal .Open;
      tblCasePriority .Open;

      with SpSelect_Cases do
      begin
        Close;
        if opentype = false then
          Parameters.ParamByName('@RegisterUserID').Value := _UserID
        else Parameters.ParamByName('@RegisterUserID').Value := -1;
        Open;
        btnEdit   .Enabled := RecordCount > 0;
        btnDelBR2 .Enabled := RecordCount > 0;
        btnAddTask.Enabled := RecordCount > 0;
        btnAttachment.Enabled := RecordCount > 0;

          if opentype = True then
          begin
            btnEdit   .enabled := False;
            btnDelBR2 .Enabled := False;
            btnAttachment.Enabled := False;
            btnAdd.Enabled := False;

          end
      end;
    end;

end;

procedure TfrCase.SpSelect_CasesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SpSelect_CasesCompleted.Value = True then
      SpSelect_CasesStatus.Value := '����� ���'
end;

procedure TfrCase.edtCustomerExit(Sender: TObject);
begin
  inherited;
  if qrydblCustomer.Locate('CustomerId',StrToIntDef(edtCustomer.Text,0),[]) then
   begin
    dblCustomer.KeyValue :=  StrToIntDef(edtCustomer.Text,0)
   end

end;

procedure TfrCase.btnAttachmentClick(Sender: TObject);
begin
  inherited;
     with TfrAttachments.create(Application,2,SpSelect_CasesCaseID.Value,SpSelect_CasesCompleted.Value) do
             ShowModal;
end;

procedure TfrCase.SBCityIDClick(Sender: TObject);

begin
   inherited;
   Dm.SearchTable(Customer,'CustomerID','CompanyName');
   if Dm.SearchResult>0 then
   BEGIN

    DBEdit4.Text:=IntToStr(dm.SearchResult);
    DBEdit3.Text:=CustomerCompanyName.AsString;
    Edit1.Text:=CustomerCompanyName.AsString;
{    DBEdit4.Refresh;
    DBEdit3.SetFocus;
    DBEdit4.SetFocus;}
  END;
end;




procedure TfrCase.FormShow(Sender: TObject);
begin
  inherited;
  if _insertMode then
  begin
    btnAdd.Click;
    DBEdit4.Text:=Dm.CustomerCustomerID.AsString;
    Edit1.Text:=Dm.CustomerCompanyName.AsString;
    DBEdit3.Text:=Dm.CustomerCompanyName.AsString;

   // dblProduct.ListFieldIndex:=Dm.CustomerProductsID.Value;
  end;
    Customer.Open;
    end;

procedure TfrCase.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  inherited;
//    ShowMessage('HI');
end;

END.