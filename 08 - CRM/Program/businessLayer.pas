unit BusinessLayer;

interface

uses DB,ADODB,dialogs,Graphics,Jpeg,Types ,Forms,Classes ,Controls , BaseUnit,DBCtrls,SYSUTILS,VARIANTS;

   Procedure Exec_delete_UserTable(TableID:integer);
   procedure Refresh_ReferenceTableData(TableID:integer);
   procedure Open_UserTable(like:string);
   function Exec_get_MaxReferenceDataID_By_TableID(tableID:integer):integer;
   Procedure MakeUserTableContentValue(UserTableContentID:integer);
   function GetNewUserTableLinkedID:integer;
   function Exec_SaveAs_Accesses(oldaccessID:integer; Title:widestring):integer;
   Procedure Exec_delete_Accesses(AccessID:byte);
   Procedure Exec_delete_Actions_ByFormID(FormID:byte);
   procedure Exec_insert_Actions(ActionName : string;FormID:byte;Title:widestring);
   Procedure Exec_insert_newActionsAccess;
   function GetActionAccess(AccessID:integer;ActionName:string;FormID:integer):boolean;
   Procedure SetUserSetting(VariableName:string;_Value:Variant;UserID :integer);
   function GetUserSetting(VariableName:String;UserID :Integer):Variant;
   function GetSystemSetting(VariableName:String):Variant;
   Procedure SetSystemSetting(VariableName:String;_Value:Variant);
   function Open_Select_UserTypeContractType_By_UserTypeID(UserTypeID:integer):TADOStoredProc;

   function SpSearch_Contract_Advance(StartDate		:string;EndDate		:String;MarketerID	:integer;ContractTypeID	:integer;
                                  ProductId		:integer;Customerid	:integer;UserTypeID	:integer )              :TADOStoredProc;

   function SpSearch_ContractDetail(StartDate		:string;EndDate		:String;
                                  ContractTypeID	:integer;MarketerID	:integer;
                                    ProductId		:integer;TaxPercentage :Real; GoodJobPercentage:Real;
                                    customerid	:integer;UserTypeID	:integer)              :TADOStoredProc;

  function Open_CheckCustomer(CustotomerID:integer):TADOStoredProc;

  Procedure SetDbLookUp(var DBLookupComboBox:TDBLookupComboBox;dblListSource :TDataSource;dblListField:String;dblKeyField:String);
Procedure OpenReportCancle(CancelReasonId,MarketerID,ProductID:INTEGER; InsertDateFrom, InsertDateTo,CancelDateFrom,CancelDateTo:String );
  Function AddSeprator(textStr :String;iDiv :Integer):String;
  function Replace1(s : widestring;old,new:Char):widestring;
implementation

uses dmu;


Procedure SetDbLookUp(var DBLookupComboBox:TDBLookupComboBox;dblListSource :TDataSource;dblListField:String;dblKeyField:String);
Begin
  with DBLookupComboBox do
  begin
     ListSource   := dblListSource;
     ListField    := dblListField;
     KeyField     := dblKeyField;
  end;

end;

function Open_CheckCustomer(CustotomerID:integer):TADOStoredProc;
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='CheckCustomer';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@CustotomerID';
      Value :=CustotomerID;
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.Open;
   Result := ADOSP;
end;


function SpSearch_Contract_Advance(StartDate		:string;EndDate		:String;MarketerID	:integer;ContractTypeID	:integer;
                                    ProductId		:integer;Customerid	:integer;UserTypeID	:integer )              :TADOStoredProc;
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Search_Contract_Advance';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@StartDate';
      Value :=StartDate;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@EndDate';
      Value :=EndDate;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@MarketerID';
      Value :=MarketerID;
   end;


   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@ContractTypeID';
      Value :=ContractTypeID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@ProductId';
      Value :=ProductId;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@customerid';
      Value :=customerid;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@UserTypeID';
      Value :=UserTypeID;
   end;

   // Amin 1391/10/04 Start
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name := '@UserID';
      Value := _UserID;
   end;
   // Amin 1391/10/04 End

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.Open;
   Result := ADOSP;
end;

function SpSearch_ContractDetail(StartDate		:string;EndDate		:String;
                                  ContractTypeID	:integer;MarketerID	:integer;
                                    ProductId		:integer;TaxPercentage :Real; GoodJobPercentage:Real;
                                    customerid	:integer;UserTypeID	:integer )              :TADOStoredProc;
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Search_ContractDetail';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@StartDate';
      Value :=TRIM(StartDate);
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@EndDate';
      Value :=TRIM(EndDate);
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@ContractTypeID';
      Value :=ContractTypeID;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@MarketerID';
      Value :=MarketerID;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@ProductId';
      Value :=ProductId;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftFloat;
      Direction := pdInput;
      Name:='@TaxPercentage';
      Value :=TaxPercentage;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftFloat;
      Direction := pdInput;
      Name:='@GoodJobPercentage';
      Value :=GoodJobPercentage;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@customerid';
      Value :=customerid;
   end;
   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@UserTypeID';
      Value :=UserTypeID;
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.Open;
   Result := ADOSP; 
end;

function Open_Select_UserTypeContractType_By_UserTypeID(UserTypeID:integer):TADOStoredProc;
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Select_UserTypeContractType_By_UserTypeID';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserTypeID';
      Value :=UserTypeID;
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.Open;
   Result := ADOSP;
end;

Procedure Exec_Delete_UserTable(TableID:integer);
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Delete_UserTable';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@TableID';
      Value :=TableID;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;

procedure Open_UserTable(like:string);
begin
  with dm.get_userTable do
   begin
     close;
     Parameters.ParamByName('@like').Value:=like;
     Open;
   end;
end;
procedure  Refresh_ReferenceTableData(TableID:integer);
begin
 with dm.get_ReferenceTableData_by_tableID do
 begin
   close;
   Parameters.ParamByName('@TableID').Value:=TableID;
   open;
 end;
end;
function Exec_get_MaxReferenceDataID_By_TableID(tableID:integer):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_MaxReferenceDataID_By_TableID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@tableID';
      Value :=tableID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@maxDataID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@maxDataID').value;
end;

function GetNewUserTableLinkedID:integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetNewUserTableLinkedID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdoutput;
      Name:='@NewUserTableLinkedID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@NewUserTableLinkedID').value;
end;

Procedure  MakeUserTableContentValue(UserTableContentID:integer);
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName := 'MakeUserTableContentValue';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@UserTableContentID';
      Value :=UserTableContentID;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;

function  Exec_SaveAs_Accesses(oldaccessID:integer; Title:widestring):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SaveAs_Accesses';


  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;;
      Direction := pdInput;
      Name:='@Title';
      Value :=Title;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@oldaccessID';
      Value :=oldaccessID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdoutput;
      Name:='@newID';
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    result:=ADOSP.Parameters.ParamByName('@newID').Value

end;

Procedure  Exec_delete_Accesses(AccessID:byte);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Accesses';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccessID';
      Value :=AccessID;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

procedure  Exec_insert_Actions(ActionName : string;FormID:byte;Title:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_Actions';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FormID';
      Value :=FormID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftString;
      Direction := pdInput;
      Name:='@ID';
      Value :=ActionName;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Title';
      Value :=Title;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;


Procedure  Exec_delete_Actions_ByFormID(FormID:byte);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Actions_ByFormID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FormID';
      Value :=FormID;
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
end;

Procedure  Exec_insert_newActionsAccess;
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName := 'insert_newActionsAccess';
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   ADOSP.Close;
   ADOSP.ProcedureName := 'insert_newActionsAccess_New';
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;

end;


function GetActionAccess(AccessID:integer;ActionName:string;FormID:integer):boolean;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetActionAccess';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@AccessID';
      Value :=AccessID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;;
      Direction := pdInput;
      Name:='@ActionName';
      size:= 50;
      Value :=ActionName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@FormID';
      Value :=FormID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;;
      Direction := pdoutput;
      Name:='@HasAccess';
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@HasAccess').value;
end;


//---------
Procedure SetUserSetting(VariableName:string;_Value:Variant;UserID :integer );
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='SetUserSetting';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftWideString;
      Direction := pdInput;
      Name:='@Value';
      size:= 510;
      Value :=_Value;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;

function GetUserSetting(VariableName:string;UserID :Integer):Variant;
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='GetUserSetting';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftWideString;
      Direction := pdoutput;
      Name:='@Value';
      size:= 510;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Value').value;
   if Result='Not Found' then
   begin
      //ShowMessage('���� ����!'+VariableName+ '����� ������ ������ ' );
      Result:='0';
   end;
end;

function GetSystemSetting(VariableName:string):Variant;
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='GetSystemSetting';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftWideString;
      Direction := pdoutput;
      Name:='@Value';
      size:= 510;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Value').value;
   if Result='Not Found' then
   begin
      //ShowMessage('���� ����!'+VariableName+ '����� ������ ������ ' );
      Result:='0';
   end;
end;

Procedure SetSystemSetting(VariableName:string;_Value:Variant);
var ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='SetSystemSetting';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftWideString;
      Direction := pdInput;
      Name:='@Value';
      size:= 510;
      Value :=_Value;
   end;
   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;


Function AddSeprator(textStr :String;iDiv :Integer):String;
var   PriceText,Txt,TxtF,TxtE :String;
begin
 if  (iDiv = 1) then
 begin
   if (copy(textStr,4,1) <> '�') then
   Begin
   if pos('�',TextStr) <> 0 then
   Begin
     TxtF := copy(textStr,1,pos('�',TextStr)-1);
     TxtE := copy(textStr,pos('�',TextStr),Length(TextStr)-length(TxtF)+1);
   end
   else TxtF :=  textStr;
   Txt:= copy(TxtF,1,(length(TxtF) mod 3))+'�'+copy(TxtF,(length(TxtF) mod 3)+1,3 ) ;
   Result :=  Txt+TxtE;
   end
   else Result:=  textStr;
 end
 else
 if (copy(textStr,((iDiv - 1)*3)+(length(textStr) mod 3)+1,1) <> '�') then
 begin
   if pos('�',TextStr) <> 0 then
   Begin
     TxtF := copy(textStr,1,pos('�',TextStr)-1);
     TxtE := copy(textStr,pos('�',TextStr),Length(TextStr)-length(TxtF)+1);
   end
   else TxtF :=  textStr;
   PriceText:= copy(TxtF,1,((iDiv - 1)*3)+(length(TxtF) mod 3) )+'�'+copy(TxtF, ((iDiv - 1)*3)+(length(TxtF) mod 3)+1 ,( length(TxtF)-((iDiv - 1)*3)+(length(TxtF) mod 3) )) ;
   Result := AddSeprator(PriceText+TxtE,iDiv-1)
 end ;
end;

Procedure OpenReportCancle(CancelReasonId,MarketerID,ProductID:INTEGER; InsertDateFrom, InsertDateTo,CancelDateFrom,CancelDateTo:String );
Begin
    with dm.Report_Cancles do
    begin
        Close;
        Parameters.ParamByName('@CancelReasonId').Value := CancelReasonId;
        Parameters.ParamByName('@MarketerID').Value :=MarketerID;
        Parameters.ParamByName('@ProductID').Value :=ProductID;
        Parameters.ParamByName('@InsertDateFrom').Value := InsertDateFrom;
        Parameters.ParamByName('@InsertDateTo').Value :=InsertDateTo;
        Parameters.ParamByName('@CancelDateFrom').Value :=CancelDateFrom;
        Parameters.ParamByName('@CancelDateTo').Value :=CancelDateTo;
        Open;
    end;

end;          

function Replace1( s : widestring;old,new:Char):widestring;
Var i: integer;
begin
   if Old = New then
   begin
      Result:=s;
      Exit;
   end;

   if old<>' ' then
      s := Trim(s);
   i := pos(old,s);
   while i<>0 do
   begin
      s := copy(s,1,i-1)+new+copy(s,i+length(old),length(s)-i-length(old)+2);
      i := pos(old,s)
   end;
   Result:=s;
end;
end.
