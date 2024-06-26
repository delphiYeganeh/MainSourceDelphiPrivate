unit UCase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, YWhereEdit, DBCtrls,
  Mask, ComCtrls, xpPages, ExtCtrls,ADODB, Grids, DBGrids, YDbgrid, xpPanel,
  Buttons,YShamsiDate, Menus;

type
  TfrCase = class(TMBaseForm)
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
    SpSelect_CasesCompleteComment: TWideStringField;
    Customer: TADOTable;
    CustomerCustomerID: TAutoIncField;
    CustomerCompanyName: TWideStringField;
    ADOTable1: TADOTable;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    CustomerCode: TStringField;
    pnlMain: TPanel;
    xpPanel1: TxpPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dblProductId: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    dblCaseTypeId: TDBLookupComboBox;
    dblCasePriorityId: TDBLookupComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    btnDelBR2: TBitBtn;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnAddTask: TBitBtn;
    btnAttachment: TBitBtn;
    btnSave: TBitBtn;
    Panel1: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    dbgCase: TYDBGrid;
    grbCase: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    SBCityID: TSpeedButton;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label15: TLabel;
    dblProduct: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    dbeCaseTitle: TDBEdit;
    dblCaseType: TDBLookupComboBox;
    dblPriority: TDBLookupComboBox;
    dblCaseOriginal: TDBLookupComboBox;
    DBMemo2: TDBMemo;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    DBEdit5: TDBEdit;
    SpSelect_CasesIsBug: TBooleanField;
    DBchIsBug: TDBCheckBox;
    SpSelect_CasesCheckUserID: TIntegerField;
    SpSelect_CasesCheckUserName: TStringField;
    SpSelect_CasesFollowUpID: TIntegerField;
    SpSelect_CasesCurentUserName: TStringField;
    Label16: TLabel;
    edtBugId: TYWhereEdit;
    RGCompleted: TRadioGroup;
    edtCustomer: TYWhereEdit;
    dblCustomer: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    YWhereEdit1: TYWhereEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    pnlCustomer: TPanel;
    Label6: TLabel;
    edtCustomerId: TYWhereEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    procedure btnDelBRClick(Sender: TObject);
    procedure dbgCaseDblClick(Sender: TObject);
    procedure btnAddTaskClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dblCustomerCloseUp(Sender: TObject);
    procedure edtCustomerChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DsSelect_CasesDataChange(Sender: TObject; Field: TField);
    procedure dblCasePriorityIdCloseUp(Sender: TObject);
    procedure dblCaseTypeIdCloseUp(Sender: TObject);
    procedure dblCaseTypeIdKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SpSelect_CasesAfterPost(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure word1Click(Sender: TObject);
    procedure SpSelect_CasesCalcFields(DataSet: TDataSet);
    procedure edtCustomerExit(Sender: TObject);
    procedure btnAttachmentClick(Sender: TObject);
    procedure SBCityIDClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure SpSelect_CasesBeforePost(DataSet: TDataSet);
    procedure edtBugIdChange(Sender: TObject);
    procedure dbgCaseNeedColorCondition(Column: TColumn; State: TGridDrawState; var Color: TColor);
    procedure RGCompletedClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure edtCustomerIdChange(Sender: TObject);

  private
    { Private declarations }
    qrydblCustomer :TADOQuery;

    procedure SetdblCustomer;
    function  CheckTasksExits(CaseId : Integer): Boolean;
    Procedure MakeFilter;
    Function  MakeFilterStr:String;
    procedure SetColorForm;
  public
    { Public declarations }
    Constructor create(Aowner:TComponent;OpenType :Boolean;CustomerType :Boolean = False);reintroduce;virtual;//Opentype = true : Show all ,False : Just User
  end;

var
  frCase: TfrCase;

implementation

uses dmu, BusinessLayer, UCaseAdd, UTask, Uattachments, URefrenceInPerson;

{$R *.dfm}

procedure TfrCase.btnDelBRClick(Sender: TObject);
var id :Integer;
begin
  inherited;

  if SpSelect_CasesRegisterUserID.Value <> _UserID  then
     ShowMessage('›ﬁÿ ò«—»— À»  ò‰‰œÂ „Ã«“ »Â Õ–› «Ì‰ —òÊ—œ „Ì »«‘œ')
  else
  begin
    if SpSelect_Cases.RecordCount > 0 then
    begin

      if not CheckTasksExits(SpSelect_CasesCaseID.Value) then
      begin
        if MessageDlg('¬Ì« »—«Ì Õ–› «ÿ„Ì‰«‰ œ«—Ìœ ø',mtConfirmation,[mbyes,mbno],0)=mryes then
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
      end
      else  ShowMessage('ﬂ«— »—«Ì „Ê—œ À»  ‘œÂ ﬁ«»· Õ–› ‰Ì” ');
    end
  end;
end;

procedure TfrCase.dbgCaseDblClick(Sender: TObject);
begin
  inherited;
  with  TfrCaseAdd.Create(Self,SpSelect_CasesCaseID.Value,SpSelect_CasesCaseTitle.Text,SpSelect_CasesProductId.Value,SpSelect_CasesCaseTypeID.Value
                              ,  SpSelect_CasesRegisterUserID.value,SpSelect_CasesCompleted.value,SpSelect_CasesComment.Text,SpSelect_CasesCasePriorityId.AsInteger,_insertMode,SpSelect_CasesCustomerID.Asinteger) do
   ShowModal;
end;

procedure TfrCase.btnAddTaskClick(Sender: TObject);
begin
  inherited;
  if SpSelect_CasesCaseTypeID.Value = 9 then
  begin
    Application.CreateForm(TFRefrenceInPerson, FRefrenceInPerson);
    FRefrenceInPerson.FollowUpId          := SpSelect_CasesFollowUpID.Asinteger ;
    FRefrenceInPerson.CustomerId          := SpSelect_CasesCustomerID.Asinteger ;
    FRefrenceInPerson.ProductsIdSTR       := SpSelect_CasesProductId.AsString ;
    FRefrenceInPerson.DBECompanyName.Text := SpSelect_CasesCompanyName.AsString;
    FRefrenceInPerson.DBEProducts.Text    := SpSelect_CasesProductTitle.AsString ;
    FRefrenceInPerson.ShowModal;
    FRefrenceInPerson.Free;
  end
  else
  with  TfrCaseAdd.Create(Self,SpSelect_CasesCaseID.Value,SpSelect_CasesCaseTitle.Text,SpSelect_CasesProductId.Value,SpSelect_CasesCaseTypeID.Value
                                ,SpSelect_CasesRegisterUserID.value,SpSelect_CasesCompleted.value,SpSelect_CasesComment.Text,SpSelect_CasesCasePriorityId.AsInteger,_insertMode,SpSelect_CasesCustomerID.Asinteger) do
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
    btnDelBR2     .Enabled := false;
    btnAddTask    .Enabled := false;
    btnAttachment .Enabled := False;
    dbeCaseTitle  .SetFocus;
  end
  else ShowMessage('„Ê—œÌ ﬂÂ œ«—«Ì ﬂ«— „Ì»«‘œ ﬁ«»· ÊÌ—«Ì‘ ‰Ì” ');

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
  else
  begin
    dblCustomer.KeyValue :=  null;
  end;

end;

procedure TfrCase.btnAddClick(Sender: TObject);
var
  productID : Integer;
  productStr : string;
begin
  inherited;
  SpSelect_Cases.Append;
  DBchIsBug.Checked :=  True;

  if _insertMode then
  begin
    DBEdit4.Text := Dm.CustomerCustomerID.AsString;
    Edit1.Text   := Dm.CustomerCompanyName.AsString;
    DBEdit3.Text := Dm.CustomerCompanyName.AsString;

    productStr := Copy(Dm.CustomerProductsID.AsString ,2, Length(Dm.CustomerProductsID.AsString)-2);

    if productStr<>'' then
      if Pos( '|' , productStr )> 0 then
        productID  := StrToInt(Copy(productStr ,1,Pos('|' , productStr )-1))
      else
        productID  := StrToInt(productStr )
    else  productID  := 0;

    SpSelect_CasesProductId.Value  := productID ;
    
  end;

  SpSelect_CasesRegisterUserID.Value := _UserID;
  SpSelect_CasesCheckUserID.Value    := _UserID;
  SpSelect_CasesRegisterDate.Value   := _Today;

  grbCase.Enabled       := True;
  btnSave.Enabled       := True;
  btnAdd.Enabled        := false;
  btnEdit.Enabled       := False;
  btnDelBR2.Enabled     := false;
  btnAddTask.Enabled    := false;
  btnAttachment.Enabled := False;
  dbeCaseTitle.SetFocus;
  edtCustomer.Clear;
  
end;

procedure TfrCase.btnSaveClick(Sender: TObject);
var Id:integer;
   CaseAccept : string;
   CommentStr: string;
   BugStatusID : Integer ;
   ModeInsert : Boolean;
   ModeBug : Boolean;
begin
  inherited;
  if Trim(dbeCaseTitle.Text) = ''  then
  begin
    ShowMyMessage('ÅÌ€«„','·ÿ›« ⁄‰Ê«‰ „Ê—œ Ê«—œ ‰„«ÌÌœ',[mbOK],mtInformation);
    Abort;
  end
  else
  begin
    if DBchIsBug.Checked then
    begin
      // „œÌ— Å‘ Ì»«‰Ì
      CaseAccept  :=  Qry_GetResult(' select top 1 id  FROM dbo.users where AccessID = 9 order by id desc' ,dm.YeganehConnection) ;
      CommentStr  := '·ÿ›« »«ê ÃÂ   «ÌÌœ »——”Ì Ê ÃÂ  «‰Ã«„  ⁄ÌÌ‰ Ê÷⁄Ì  ‘Êœ';
      BugStatusID := 8 ;
      ModeBug := True;
    end
    else
    begin
      //ò«—»— Ã«—Ì
      CaseAccept  := IntToStr(_UserID)  ;
      CommentStr  := '„Ê—œ À»  ‘œ';
      BugStatusID := 2 ;
      ModeBug := False;
    end;

    ModeInsert := False ;
    if SpSelect_Cases.State = dsInsert then
      ModeInsert := True ;

    SpSelect_Cases.Post;
    Id := SpSelect_CasesCaseID.Value;

    if ModeInsert then
    begin
      with TADOQuery.Create(nil) do
      begin
         Connection := Dm.YeganehConnection;
         SQL.Text := ' insert into dbo.Tasks (CaseId,Comment,StatusId,AssignedUserId,AssignedDate)values('+IntToStr(Id)+','''+CommentStr+''','+IntToStr(BugStatusID)+','
                                                            +CaseAccept+','''+_Today+'''' +') ';

        if ModeBug then
          SQL.Text := SQL.Text + ' insert into dbo.FollowUp (TaskID,CustomerID,ActionTypeID,DoneStatusID,DoneComment,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate)'+
                    ' values(@@IDENTITY,'+DBEdit4.Text+',47,2'+','''+' «—”«· »Â ò«— «»· „œÌ— Å‘ Ì»«‰Ì '+''','+IntToStr(_MarketerID)+','''+' »«ê ' + IntToStr(Id) +' ‹ '+ DBMemo2.text+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +') ';

        ExecSQL;
      end;

    end;
    SpSelect_Cases.Requery;
    SpSelect_Cases.Locate('CaseId',id,[]);
  end;
end;

procedure TfrCase.BitBtn1Click(Sender: TObject);
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
    canclose              := false;
    grbCase   .Enabled    := False;
    btnSave   .Enabled    := False;
    btnAdd    .Enabled    := True;
    btnEdit   .Enabled    := True;
    btnDelBR2 .Enabled    := True;
    btnAddTask.Enabled    := True;
    btnAttachment.Enabled := True;
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
  if DBEdit4.Text <> '' then
    edit1.Text:=Qry_GetResult(' SELECT CompanyName FROM Customer WHERE CustomerID ='+DBEdit4.Text ,dm.YeganehConnection)  ;


        //        edit1.Text:=Qry_GetResult(' SELECT CompanyName FROM Customer WHERE CustomerID ='+SpSelect_CasesCustomerID.AsString ,dm.YeganehConnection)
//   END
{  if not SpSelect_CasesCustomerID.IsNull then
  edtCustomer.Text := SpSelect_CasesCustomerID.AsString
  else edtCustomer.Text := ''
  }
  if SpSelect_CasesCaseTypeID.Value = 9 then
    btnAddTask.Caption := '«—“Ì«»Ì'
  else
    btnAddTask.Caption := 'ò«—Â«';

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
    Filtered := False;
    Filter   := MakeFilterStr;
    Filtered := True;
  end;
end;

Function TfrCase.MakeFilterStr:String;
var Str :String;
Begin
  if edtCustomerId.text <> '' then
      str := ' CustomerId = '+edtCustomerId.Text;

  if edtBugId.text <> '' then
    if str <> '' then Str :=Str+' and CaseID = '+ edtBugId.Text
      else Str := ' CaseID = '+ edtBugId.Text;

  if dblProductId.KeyValue <> null then
    if str <> '' then Str :=Str+' and ProductId = '+ IntToStr(dblProductId.KeyValue)
      else Str := ' ProductId = '+ IntToStr(dblProductId.KeyValue);

  if dblCaseTypeId.KeyValue <> null then
    if str <> '' then Str :=Str+' and CaseTypeID = '+ IntToStr(dblCaseTypeId.KeyValue)
      else Str := ' CaseTypeID = '+ IntToStr(dblCaseTypeId.KeyValue);

  if dblCasePriorityId.KeyValue <> null then
    if str <> '' then Str :=Str+' and CasePriorityId = '+ IntToStr(dblCasePriorityId.KeyValue)
      else Str := ' CasePriorityId = '+ IntToStr(dblCasePriorityId.KeyValue);

   (*
  if  chkCompleted.Checked then
    if str <> '' then Str :=Str+' and Completed = 1'
      else Str := ' Completed = 1';
    

  if RGCompleted.ItemIndex = 0 then
  begin
      if str <> '' then Str :=Str+' and Completed = Completed '
      else Str := ' Completed = Completed ';
  end   else
  *)
  if RGCompleted.ItemIndex = 1 then
  begin
      if str <> '' then Str :=Str+' and Completed <> 1'
      else Str := ' Completed <> 1';
  end  else
  if RGCompleted.ItemIndex = 2 then
  begin
      if str <> '' then Str :=Str+' and Completed = 1'
      else Str := ' Completed = 1';
  end  ;

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
  btnSave.Enabled       := False;
  btnAdd.Enabled        := True;
  btnEdit.Enabled       := True;
  btnDelBR2.Enabled     := True;
  btnAddTask.Enabled    := True;
  btnAttachment.Enabled := True;
  grbCase.Enabled       := false;
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

constructor TfrCase.create(Aowner: TComponent; OpenType: Boolean;CustomerType :Boolean = False);
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
      if CustomerType then
      begin
        Parameters.ParamByName('@RegisterUserID').Value := Dm.CustomerCustomerID.AsString  ;
        Parameters.ParamByName('@TypeReport').Value := 1  ;
        Self.Caption := '„Ê«—œ / »«ê Â«Ì „‘ —Ì';
        pnlCustomer.Enabled := False;
      end
      else
      if opentype = false then
      begin
        Parameters.ParamByName('@RegisterUserID').Value := _UserID  ;
        Parameters.ParamByName('@TypeReport').Value := 0  ;
        Self.Caption := '„Ê«—œ / »«ê Â«Ì ò«—»— Ã«—Ì';
      end
      else
      begin
        Parameters.ParamByName('@RegisterUserID').Value := -1;
        Parameters.ParamByName('@TypeReport').Value := 0  ;
        Self.Caption := 'Â„Â „Ê«—œ/»«ê Â«';
      end;
      Open;
      btnEdit   .Enabled := RecordCount > 0;
      btnDelBR2 .Enabled := RecordCount > 0;
      btnAddTask.Enabled := RecordCount > 0;
      btnAttachment.Enabled := RecordCount > 0;

      if opentype = True then
      begin
        btnEdit   .enabled    := False;
        btnDelBR2 .Enabled    := False;
        btnAttachment.Enabled := False;
        btnAdd.Enabled        := False;

        btnSave .Enabled      := False;

      end
    end;
  end;

end;

procedure TfrCase.SpSelect_CasesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SpSelect_CasesCompleted.Value = True then
    SpSelect_CasesStatus.Value := ' ﬂ„Ì· ‘œÂ'
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

    DBEdit4.Text:= IntToStr(dm.SearchResult);
    DBEdit3.Text:= CustomerCompanyName.AsString;
    Edit1.Text  := CustomerCompanyName.AsString;
    {    DBEdit4.Refresh;
    DBEdit3.SetFocus;
    DBEdit4.SetFocus;}
  END;
end;


procedure TfrCase.FormShow(Sender: TObject);
begin
  inherited;
  SetColorForm ;
  (*
  if _insertMode then
  begin
    btnAdd.Click;
    DBEdit4.Text:=Dm.CustomerCustomerID.AsString;
    Edit1.Text:=Dm.CustomerCompanyName.AsString;
    DBEdit3.Text:=Dm.CustomerCompanyName.AsString;

   // dblProduct.ListFieldIndex:=Dm.CustomerProductsID.Value;
  end;
  *)
  Customer.Open;
end;

procedure TfrCase.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  inherited;
//    ShowMessage('HI');
end;

procedure TfrCase.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 924)  or (NewHeight < 548) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TfrCase.SetColorForm;
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color         := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;
end;

procedure TfrCase.SpSelect_CasesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(dbeCaseTitle.Text) = ''  then
  begin
    ShowMyMessage('ÅÌ€«„','·ÿ›« ⁄‰Ê«‰ „Ê—œ Ê«—œ ‰„«ÌÌœ',[mbOK],mtInformation);
    Abort;
  end;

end;

procedure TfrCase.edtBugIdChange(Sender: TObject);
begin
  inherited;
  MakeFilter;
end;

procedure TfrCase.dbgCaseNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   Color:=clWindow;
   try
     if (SpSelect_CasesCompleted.AsBoolean) THEN
         Color:=clMoneyGreen
   except
   end;
end;

procedure TfrCase.RGCompletedClick(Sender: TObject);
begin
  inherited;
  MakeFilter;
end;

procedure TfrCase.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(Customer,'CustomerID','CompanyName');
  if Dm.SearchResult>0 then
  BEGIN

    edtCustomerId.Text:= IntToStr(dm.SearchResult);
    Edit2.Text  := CustomerCompanyName.AsString;

  END;
end;

procedure TfrCase.Edit2Change(Sender: TObject);
begin
  inherited;
  MakeFilter;
end;

procedure TfrCase.edtCustomerIdChange(Sender: TObject);
begin
  inherited;
   MakeFilter;
end;

END.
