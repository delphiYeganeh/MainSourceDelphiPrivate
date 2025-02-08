unit CancelCustomerU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, DBCtrls, Mask, ExtActns, ActnList,
  DB, UemsVCL, ExtCtrls, Grids, DBGrids, YDbgrid, ADODB, Menus;

type
  TFrCancelCustomer = class(TMBaseForm)
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
    pnlCustomerCancel: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
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
    pnlMain: TPanel;
    Panel2: TPanel;
    btnReturnCustomer: TBitBtn;
    btnCancel: TBitBtn;
    btnAccept: TBitBtn;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    dbgCustomerCancel: TYDBGrid;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnAdd: TBitBtn;
    DSSelectCustomerCancel: TDataSource;
    Select_CustomerCancel: TADOStoredProc;
    Select_CustomerCancelCancelReasonTitle: TStringField;
    Select_CustomerCancelCancelReasonID: TWordField;
    Select_CustomerCancelCancelComment: TWideStringField;
    Select_CustomerCancelCancelDate: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    DBMemo2: TDBMemo;
    Select_CustomerCancelRowId: TLargeintField;
    Select_CustomerCancelCustomerId: TIntegerField;
    Select_CustomerCancelID: TIntegerField;
    Label1: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Select_customer_By_CustomerIDCustomerStatusTitle: TStringField;
    SpeedButton1: TSpeedButton;
    Select_CustomerCancelUserId: TIntegerField;
    Select_CustomerCancelUserTitle: TStringField;
    lblReturnCustomer: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure refreshData;
    procedure btnReturnCustomerClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CustomerID: integer;
    RefreshNeed : Boolean;
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

procedure TFrCancelCustomer.btnAcceptClick(Sender: TObject);
begin
  inherited;

  With Select_CustomerCancel do
  begin
    if State in [dsEdit,dsInsert] then
    begin
      if  (Select_CustomerCancelCancelReasonID.AsInteger = 0)  then
      begin
        ShowMessage('«‰ Œ«» ⁄·  «‰’—«› «Ã»«—Ì „Ì »«‘œ');
        DBLookupComboBox1.SetFocus;
        DBLookupComboBox1.DropDown;
        ModalResult :=mrNone;
        Exit;

      end;

      if  (Select_CustomerCancelCancelDate.AsString = '')   then
      begin
        ShowMessage('«‰ Œ«»  «—ÌŒ «‰’—«› «Ã»«—Ì „Ì »«‘œ');
        DBShamsiDateEdit1.SetFocus;
        ModalResult :=mrNone;
        Exit;
      end;

      Select_CustomerCancelUserId.AsInteger                 := _UserID ;

      Post;
      Last;
    
     with  Select_customer_By_CustomerID do
     if state in [dsedit,dsinsert] then
      begin

        Select_customer_By_CustomerIDCancelReasonID.AsInteger := Select_CustomerCancelCancelReasonID.AsInteger;
        Select_customer_By_CustomerIDCancelComment.AsString   := Select_CustomerCancelCancelComment.AsString;
        Select_customer_By_CustomerIDCancelDate.AsString      := Select_CustomerCancelCancelDate.AsString;

        //Select_customer_By_CustomerIDCustomerStatusID.AsInteger := 3;
        Post;
      end;
    end;
  end;

  if (Select_Customer_By_CustomerIDCustomerID.AsString <> '') then
     Qry_SetResult('Insert into dbo.ActivityUser_Log(CustomerID,UserId,Date,FormName,Activity,ComputerName,IPAddress) select '+Select_Customer_By_CustomerIDCustomerID.AsString+','+ Dm.UserId.AsString + ',getdate(),''CancelCustomerU'','''+'btnAccept'+''', '''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);
     
  pnlCustomerCancel.Enabled := false;
  btnEdit           .Enabled := True;
  btnDel    .Enabled := True;
  btnReturnCustomer .Enabled := True;
  btnAccept.Enabled := false;
  RefreshNeed := True;
  Select_customer_By_CustomerID.Close;
  Select_customer_By_CustomerID.Open;
  
  if Select_customer_By_CustomerIDCustomerStatusID.AsInteger in [2,3] then
    DBLookupComboBox3.Color := $00CECEFF
  else  DBLookupComboBox3.Color := $00DEEDDE ;

  ShowMessage(' Ê÷⁄Ì  ‰Â«ÌÌ '+Select_customer_By_CustomerIDCustomerStatusTitle.AsString + ' „Ì »«‘œ ') ;

  close;
end;

procedure TFrCancelCustomer.btnCancelClick(Sender: TObject);
begin
  inherited;

  with  Select_customer_By_CustomerID do
   if state in [dsedit,dsinsert] then  Cancel;


   With Select_CustomerCancel do
      if not (State in [dsEdit,dsInsert]) then
         Cancel;
  
  pnlCustomerCancel.Enabled := False;
  btnEdit           .Enabled := True;
  btnDel    .Enabled := True;
  btnReturnCustomer .Enabled := True;
  btnAdd.Enabled := True;

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
    // Edit;
  end;
  
  with Select_CustomerCancel do
  begin
       Close;
       Parameters.ParamByName('@customerid').Value:=CustomerID;
       Open;

  end;

  if Select_customer_By_CustomerIDCustomerStatusID.AsInteger in [2,3] then
    DBLookupComboBox3.Color := $00CECEFF ;
end;

procedure TFrCancelCustomer.btnReturnCustomerClick(Sender: TObject);
begin
  inherited;
  //if messageShowString('¬Ì« «“ Õ–› «‰’—«›Ì Ê ÅÌêÌ—Ì „Ãœœ „‘ —Ì „ÿ„∆‰ Â” Ìœø',true)  then
  if messageShowString('¬Ì« «“ ÅÌêÌ—Ì „Ãœœ „‘ —Ì „ÿ„∆‰ Â” Ìœø',true)  then
   begin
     Dm.Followup_cancel(CustomerID);

     if (Select_Customer_By_CustomerIDCustomerID.AsString <> '') then
      Qry_SetResult('Insert into dbo.ActivityUser_Log(CustomerID,UserId,Date,FormName,Activity,ComputerName,IPAddress) select '+Select_Customer_By_CustomerIDCustomerID.AsString+','+ Dm.UserId.AsString + ',getdate(),''CancelCustomerU'','''+'btnReturnC'+''', '''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);
     DBLookupComboBox3.Color := $00DEEDDE ;
     RefreshNeed := True;
   end;
 // Select_customer_By_CustomerID.Close;
//  Select_customer_By_CustomerID.Open;
  Close;
end;

procedure TFrCancelCustomer.btnAddClick(Sender: TObject);
begin
  inherited;
   pnlCustomerCancel.Enabled  := True;
   btnAdd .Enabled            := False;
   btnEdit           .Enabled := False;
   btnDel    .Enabled         := False;
   btnReturnCustomer .Enabled := False;
   btnAccept.Enabled          := True;
   DBShamsiDateEdit1.SetFocus;

   Select_CustomerCancel.Append;
   Select_CustomerCancel.FieldByName('CustomerId').AsInteger := Select_customer_By_CustomerIDCustomerID.asInteger ;
   Select_CustomerCancelCancelDate.AsString:= _Today ;

   with Select_customer_By_CustomerID do
    if not (State in [dsEdit,dsInsert]) then
         EDIT;
    Select_customer_By_CustomerIDCustomerStatusID.AsInteger := 3;

end;

procedure TFrCancelCustomer.btnEditClick(Sender: TObject);
begin
  inherited;
  pnlCustomerCancel.Enabled  := True;
  btnAdd .Enabled            := False;
   btnEdit          .Enabled := False;
  btnDel    .Enabled         := False;
  btnReturnCustomer .Enabled := False;
  btnAccept.Enabled          := True;
  DBMemo1.SetFocus;

  with Select_customer_By_CustomerID do
    if not (State in [dsEdit,dsInsert]) then
         EDIT;

   With Select_CustomerCancel do
      if not (State in [dsEdit,dsInsert]) then
         EDIT;
end;

procedure TFrCancelCustomer.FormShow(Sender: TObject);
begin
  inherited;
  RefreshNeed := False;
  btnReturnCustomer.Enabled := Select_customer_By_CustomerIDCustomerStatusID.AsInteger = 3 ;
  lblReturnCustomer.Caption := ' ¬Œ—Ì‰  €ÌÌ— Ê ÷⁄Ì  œÂ‰œÂ »Â ÅÌêÌ—Ì „Ãœœ = ‰œ«—œ ' ;
  if (Select_Customer_By_CustomerIDCustomerID.AsString <> '') then
    lblReturnCustomer.Caption := ' ¬Œ—Ì‰  €ÌÌ— Ê ÷⁄Ì  œÂ‰œÂ »Â ÅÌêÌ—Ì „Ãœœ  ' + ' = ' + Qry_GetResult('SELECT TOP 1 u.title UserTitle  FROM [dbo].[ActivityUser_Log] l LEFT JOIN Users AS U ON u.id = l.userId  WHERE l.CustomerID = '+Select_Customer_By_CustomerIDCustomerID.AsString+'  AND l.FormName = '''+'MenuDeleteCustomer'+''' AND l.Activity = '''+'btnReturnC'+''' ORDER BY l.id desc ' ,dm.YeganehConnection) ;

end;

procedure TFrCancelCustomer.btnDelClick(Sender: TObject);
begin
  inherited;
  if  (Select_CustomerCancel.RecordCount = 1)  and
      (Select_customer_By_CustomerIDCustomerStatusID.AsInteger = 3) then
  begin
    ShowMessage('«„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ „‘ —Ì «‰’—«› «“ Œ—Ìœ «”  Ê Õœ«ﬁ· »«Ìœ Ìò —òÊ—œ ⁄·  «‰’—«› œ«‘ Â »«‘œ');
    Exit;
  end;

  IF MessageDlg('¬Ì« «“ Õ–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
  Begin
     if  Select_CustomerCancelID.AsInteger >0 then
     begin

       Qry_SetResult('Insert into dbo.ActivityUser_Log(CustomerID,UserId,Date,FormName,Activity,ComputerName,IPAddress) select '+Select_Customer_By_CustomerIDCustomerID.AsString+','+ Dm.UserId.AsString + ',getdate(),''Delete'','''+'btnDel'+''', '''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);
       Qry_SetResult(' Delete From dbo.CustomerCancel_History Where ID = '+Select_CustomerCancelID.AsString ,Dm.YeganehConnection);
       Select_CustomerCancel.Close;
       Select_CustomerCancel.Open;
       
        with Select_customer_By_CustomerID do
          if not (State in [dsEdit,dsInsert]) then
               EDIT;

     end;

    with  Select_customer_By_CustomerID do
    begin
      if state in [dsedit] then
      begin

        if Select_customer_By_CustomerIDCustomerStatusID.AsInteger = 3 then
        begin
          Select_CustomerCancel.Last;
          Select_customer_By_CustomerIDCancelReasonID.AsInteger := Select_CustomerCancelCancelReasonID.AsInteger;
          Select_customer_By_CustomerIDCancelComment.AsString   := Select_CustomerCancelCancelComment.AsString;
          Select_customer_By_CustomerIDCancelDate.AsString      := Select_CustomerCancelCancelDate.AsString;

       // Select_customer_By_CustomerIDCustomerStatusID.AsInteger:=3;
          Post;
        end;
      end;

    end;
    // RefreshNeed := True ;
  End;
end;

procedure TFrCancelCustomer.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Select_CustomerCancelCancelDate.AsString:= Dm.MssCalendarPro1.Execute('/') ;
end;

end.
