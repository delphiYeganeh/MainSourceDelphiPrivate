unit UContractAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, StdCtrls, Mask, DBCtrls,
  Buttons, ExtActns, ActnList, DB,adodb,Yshamsidate, YDBEDit, UemsVCL,
  ExtCtrls, Menus,  KimiyaEdit;

type
  TfrContractAdd = class(TMBaseForm)
    Label3: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label2: TLabel;
    btnAddContractWord: TBitBtn;
    GroupBox3: TGroupBox;
    dblContractTypeCNT: TDBLookupComboBox;
    dblContractSubTypeCNT: TDBLookupComboBox;
    dblProductsCNT: TDBLookupComboBox;
    dbeCommentCNT: TDBMemo;
    dblMarketerCNT: TDBLookupComboBox;
    dbViwAmountCNT1: TDBEdit;
    OpenDialog: TOpenDialog;
    BitBtn1: TBitBtn;
    btnCancel: TBitBtn;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GoodJobPercentageCNT: TDBEdit;
    dbeTaxPercentageCNT: TDBEdit;
    dbeInsuranceAccountCNT: TDBEdit;
    Label27: TLabel;
    Label34: TLabel;
    ppmContractDate: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    btnContractDate: TBitBtn;
    btnAddFish: TBitBtn;
    dbeBeginDateCNT: TDBShamsiDateEdit;
    dbeEndDateCNT: TDBShamsiDateEdit;
    Label1: TLabel;
   //edtAmount : TKimiyaEdit;
    QProducts: TADOQuery;
    QProductsProductID: TWordField;
    QProductsProducttitle: TWideStringField;
    DsQProducts: TDataSource;
    Label4: TLabel;
    dbeSignUpDateCNT: TDBShamsiDateEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    edtAmount: TEdit;
    procedure btnAddContractWordClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnContractDateClick(Sender: TObject);
    procedure btnAddFishClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure edtAmountChange(Sender: TObject);
    procedure edtAmountKeyPress(Sender: TObject; var Key: Char);
    procedure dbeEndDateCNTExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure SetComponentsDataSource;
    procedure SetdblContractType;
    procedure dblContractTypeDataChange(Sender: TObject; Field: TField);
    procedure setdblProducts;    
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner:TComponent);reintroduce;virtual;
  end;

var
  frContractAdd: TfrContractAdd;

implementation

uses dmu, BusinessLayer, UContract;

{$R *.dfm}

var
  qrydblContractType,qrydblContractSubType,qrydblProduct  :TADOQuery;

procedure TfrContractAdd.SetComponentsDataSource;
var i : Integer;
    DsContract :TDataSource;
begin
    DsContract :=TDataSource.Create(nil);
    DsContract.DataSet := SpDbgridContract;
   for i:=0 to ComponentCount-1 do
   if pos('CNT',Components[i].Name) > 0 then
    begin
         if Components[i] is TDBEdit then
                TDBEdit(Components[i]).DataSource := DsContract
         else if Components[i] is TDBLookupComboBox then
                TDBLookupComboBox(Components[i]).DataSource := DsContract
         else if Components[i] is TDBMemo then
                TDBMemo(Components[i]).DataSource := DsContract
         else if Components[i] is TDBShamsiDateEdit then
                TDBShamsiDateEdit(Components[i]).DataSource := DsContract;
    end

end;

procedure TfrContractAdd.setdblProducts;
var dsdblProduct :TDataSource;
begin
    dsdblProduct  := TDataSource.Create(Self);
    dsdblProduct.DataSet:= qrydblProduct;
    with qrydblProduct do
    begin
      Connection := Dm.YeganehConnection;
      close;
      SQL.Text := 'select  Producttitle,cp.ProductID from CustomerProduct CP inner   join Product p on(cp.ProductID = p.ProductID) where CustomerID = '+IntToStr(gCustomerID);
     // ShowMessage(SQL.Text);
      open;
      Fields[0].Alignment:=   taRightJustify;
    end;
     if qrydblProduct.RecordCount >0 then
     begin
         dblProductsCNT.ListSource   := dsdblProduct ;
         dblProductsCNT.ListField := 'Producttitle';
         dblProductsCNT.KeyField := 'ProductID';
//       dblProductsCNT  .KeyValue     := qrydblProduct.FieldByName('ProductID').Value
     end;

end;

procedure TfrContractAdd.SetdblContractType;
var dsdblContractType :TDataSource;
    dsdblsrchContractType :TDataSource;
    StrCmd:String;
begin
    StrCmd := 'select  ContractTypetitle, ContractTypeID,ContractTypeCode from ContractType '
                +'where ContractTypeID in (select ContractTypeId from UserTypeContractType where UserTypeID =  '+IntToStr(_UserTypeID)+') or '+IntToStr(_UserTypeID)+' = 0';

    SetQueryDataSet(dsdblContractType,qrydblContractType,StrCmd,Dm.YeganehConnection,true);

     if qrydblContractType.RecordCount >0 then
     begin
      SetDbLookUp(dblContractTypeCNT,dsdblContractType,'ContractTypetitle','ContractTypeID');
      dsdblContractType.OnDataChange := dblContractTypeDataChange;
     end;

end;

procedure TfrContractAdd.dblContractTypeDataChange(
  Sender: TObject; Field: TField);
var dsdblContractSubType :TDataSource;
    ContractTypeId :Integer;
    StrCmd :String;
begin
  inherited;

    StrCmd := 'Select ContractSubTypeTitle,ContractTypeID,ContractSubTypeCode,ContractSubTypeID from ContractSubType where ContractTypeID ='
                +IntToStr(qrydblContractType.FieldByName('ContractTypeID').Value);

    SetQueryDataSet(dsdblContractSubType,qrydblContractSubType,StrCmd,Dm.YeganehConnection,true);

    if qrydblContractSubType.RecordCount  > 0    then
             SetDbLookUp(dblContractSubTypeCNT,dsdblContractSubType,'ContractSubTypeTitle','ContractSubTypeID');
    
end;


procedure TfrContractAdd.btnAddContractWordClick(Sender: TObject);
begin
  inherited;
  AddImageField(FrContract.SpDbgridContract.FieldByName('ContractText'),'Word Files|*.doc;*.docx');
end;

constructor TfrContractAdd.create(AOwner: TComponent);
var key :Char;
begin
 inherited create(Aowner);

    qrydblContractType   := TADOQuery.Create(nil);
    qrydblContractSubType:= TADOQuery.Create(nil);
    qrydblProduct        := TADOQuery.Create(nil);

    FrContract.SetComponentsDataSource;
    SetdblContractType;
    dblMarketerCNT.DataSource:=FrContract.DsdbgContract;
    dblProductsCNT.DataSource:=FrContract.DsdbgContract;
    dbeSignUpDateCNT.DataSource:=FrContract.DsdbgContract;
    dbeBeginDateCNT.DataSource:=FrContract.DsdbgContract;
    dbeEndDateCNT.DataSource:=FrContract.DsdbgContract;
    dbeInsuranceAccountCNT.DataSource:=FrContract.DsdbgContract;
    GoodJobPercentageCNT.DataSource:=FrContract.DsdbgContract;
    dbeTaxPercentageCNT.DataSource:=FrContract.DsdbgContract;
    dbeCommentCNT.DataSource:=FrContract.DsdbgContract;

    dblContractTypeCNT.KeyValue:=FrContract.SpDbgridContractContractTypeID.AsInteger;
    dblContractSubTypeCNT.KeyValue:=FrContract.SpDbgridContractContractSubTypeID.AsInteger;

 //   frContractAdd.SetdblProducts;

   if  FrContract.SpDbgridContract.State in [dsinsert] then FrContract.SpDbgridContract.FieldByName('BeginDate').Value := _Today
   else   begin
              dblContractTypeDataChange(Self,FrContract.SpDbgridContract.FieldByName('ContractTypeID'));
              dblContractSubTypeCNT.KeyValue := FrContract.SpDbgridContract.FieldByName('ContractSubTypeID').Value;
          end;

   if not FrContract.SpDbgridContract.FieldByName('Amount').IsNull then
           if length(FrContract.SpDbgridContract.FieldByName('Amount').AsString) >3 then
          edtAmount.Text := AddSeprator(FrContract.SpDbgridContract.FieldByName('Amount').AsString,length(FrContract.SpDbgridContract.FieldByName('Amount').AsString) div 3)
          else   edtAmount.Text := FrContract.SpDbgridContract.FieldByName('Amount').AsString;
end;

procedure TfrContractAdd.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (_EditContract = false)and(FrContract.SpDbgridContract.State in [dsedit]) then
  begin
  ShowMessage('��� ������ ��� ������ ������');
  abort;
  end;
  if (dbeEndDateCNT.Text = '')or(dbeBeginDateCNT.Text = '') then
  Begin
     ShowMessage('����� ���� � ����� ������� ���� ���� ��� ���');
     exit;
  end;

  FrContract.SpDbgridContractContractTypeID.AsInteger:=dblContractTypeCNT.KeyValue;
  FrContract.SpDbgridContractAmount.AsFloat:=StrToFloat(StringReplace(edtAmount.Text,'�','',[rfReplaceAll]));
  FrContract.SpDbgridContractContractSubTypeID.AsInteger:=dblContractSubTypeCNT.KeyValue;
  close;
end;

procedure TfrContractAdd.btnCancelClick(Sender: TObject);
begin
  inherited;
  FrContract.SpDbgridContract.Cancel;
  close;
end;

procedure TfrContractAdd.btnContractDateClick(Sender: TObject);
begin
  inherited;
  ppmContractDate.Popup(Mouse.CursorPos.X,Mouse.CursorPos.y);
end;

procedure TfrContractAdd.btnAddFishClick(Sender: TObject);
begin
  inherited;
  AddImageField(FrContract.SpDbgridContract.FieldByName('TaxFish'),'Word Files|*.jpg');
end;

procedure TfrContractAdd.N1Click(Sender: TObject);
begin
  inherited;
  FrContract.SpDbgridContract.FieldByName('EndDate').Value := IntToStr(StrToInt(copy(_Today,1,4))+1)+copy(_Today,5,length(_Today)-4);
end;

procedure TfrContractAdd.N2Click(Sender: TObject);
var mm,yy,dd :String;
begin
  inherited;
  yy:= copy(_Today,1,4);
  mm:= copy(_Today,6,2);
  dd:= copy(_Today,9,2);
  if (StrToInt(mm)+6) > 12 then
  begin
     mm := IntToStr((StrtoInt(mm)-6 ));
     yy := IntToStr(StrToInt(yy) +1);
  end else mm := IntToStr(StrToInt(mm)+6);

  if length(mm) < 2 then mm := '0'+mm;
  if length(dd) < 2 then dd := '0'+dd;

      FrContract.SpDbgridContract.FieldByName('EndDate').Value := yy+'/'+mm+'/'+dd;
end;

procedure TfrContractAdd.edtAmountChange(Sender: TObject);
begin
  inherited;
  if StrToIntDef(edtAmount.Text,0) <> 0 then
      FrContract.SpDbgridContract.FieldByName('Amount').AsString := edtAmount.Text
  else if (edtAmount.Text = '0' )or(edtAmount.Text = '') then FrContract.SpDbgridContract.FieldByName('Amount').AsString := '0';
end;

procedure TfrContractAdd.edtAmountKeyPress(Sender: TObject; var Key: Char);
var Len,i,Fnd,Ps :integer;
    tx :String;
    FKimiyaSpecialChar : String;
    FKimiyaIsPrice : Boolean ;
  function RemoveSeparetor(text :String):String ;
  var tx : String;
  begin
     while pos('�',text) <> 0 do
     begin
         tx := Text;
         delete(tx, Pos('�',text),1);
         text:= tx;
     end;
     Result := text;
  end;

begin
  inherited;
  FKimiyaIsPrice := True;
  
  if edtAmount.ReadOnly = true then exit;
  i:=1;
  Fnd:=0;
  if ( not(Key in ['0'..'9']) and (key <> char(ord(8))) )  and not (Char(Key) in [^V, ^X, ^C]) then
  begin
    if FKimiyaSpecialChar <> '' then
    Begin
       for i:=1 to length(FKimiyaSpecialChar) do
       if key = copy(FKimiyaSpecialChar,i,1) then
         Fnd := 1;
       if Fnd = 0 then
         Key := #0;
    end
    else Key := #0;

  end;

  if (_EditContract = false)and(FrContract.SpDbgridContract.State in [dsedit]) then
  begin
    ShowMessage('��� ������ ���� ������ ��� ���� ��������');
    key :=#0;
  end;

  if (FKimiyaIsPrice )then
  Begin
      tx := RemoveSeparetor(edtAmount.text+key);
      Len := length(tx);
      i:= Len div 3 ;
       if( ( (len >3)and (key <> #8) )or( (key = #8 ) and (Len > 4) ) )
            and (key in ['0'..'9',#8] )and(not (Char(Key) in [^V, ^X, ^C])) then
       begin
         if key = char(8) then
         Begin
           tx := copy(tx,1,length(tx)-2)
         end ;
         text := tx;
         if length(text) > 3 then
         begin
           text := AddSeprator(text,i);
           if (key = char(8))and(len <> 8) then
           Begin
            text := copy(text,1,length(text)-1)
           end     ;
         end;
       edtAmount.SelStart := Length(text);
       key := #0;
       end;
  end;

end;

procedure TfrContractAdd.dbeEndDateCNTExit(Sender: TObject);
begin
  inherited;
 //  If dbeEndDateCNT.Text > dbeEndDateCNT.Text then

end;

procedure TfrContractAdd.FormCreate(Sender: TObject);
begin
  inherited;
        QProducts.Close;
        QProducts.SQL.Clear;
        QProducts.SQL.Add('select  Producttitle,cp.ProductID from CustomerProduct CP inner   join Product p on(cp.ProductID = p.ProductID) where CustomerID = '+IntToStr(gCustomerID));
        QProducts.Open;
end;

procedure TfrContractAdd.BitBtn2Click(Sender: TObject);
begin
  inherited;
  AddImageField(FrContract.SpDbgridContract.FieldByName('ContractExcell'),'Excell Files|*.xls;*.xlsx');
end;

procedure TfrContractAdd.BitBtn3Click(Sender: TObject);
//Hamed_Ansari_S_13990418
var
 AQry : TADOQuery;
begin
  inherited;
  if MessageDlg('����� ����� � ��� �� ��� ���� ǘ�� ������� ����Ͽ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    AQry := TADOQuery.Create(Self);
     try
      AQry.Connection := Dm.YeganehConnection;
      AQry.Close;
      AQry.SQL.Text := 'Update Contract Set ContractExcell = Null Where ContractId = ' + FrContract.SpDbgridContract.FieldByName('ContractId').AsString ;
      AQry.ExecSQL;
      ShowMessage('���� ǘ�� �� ������ ��� �����');
     finally
      FreeAndNil(AQry);
     end;
   end;
//Hamed_Ansari_S_13990418
end;

procedure TfrContractAdd.BitBtn4Click(Sender: TObject);
//Hamed_Ansari_S_13990418
var
 AQry : TADOQuery;
begin
  inherited;
  if MessageDlg('����� ����� � ��� �� ��� ��� ������� ������� ����Ͽ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    AQry := TADOQuery.Create(Self);
     try
      AQry.Connection := Dm.YeganehConnection;
      AQry.Close;
      AQry.SQL.Text := 'Update Contract Set ContractText = Null Where ContractId = ' + FrContract.SpDbgridContract.FieldByName('ContractId').AsString ;
      AQry.ExecSQL;
      ShowMessage('��� ������� �� ������ ��� �����');
     finally
      FreeAndNil(AQry);
     end;
   end;
//Hamed_Ansari_S_13990418
end;

procedure TfrContractAdd.FormShow(Sender: TObject);
begin
  inherited;
//Hamed_Ansari_S_13990418
  BitBtn3.Enabled := True;
 if FrContract.SpDbgridContractContractExcell.IsNull then
  BitBtn3.Enabled := False;

  BitBtn4.Enabled := True;
 if FrContract.SpDbgridContractContractText.IsNull then
  BitBtn4.Enabled := False;
//Hamed_Ansari_S_13990418
end;

end.


