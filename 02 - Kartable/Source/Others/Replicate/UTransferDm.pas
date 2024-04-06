unit UTransferDm;

interface

uses
  SysUtils, Classes, ExtCtrls, DB, ADODB,dialogs, AppEvnts;

type
  TTransfer_dm = class(TDataModule)
    Letter2: TADODataSet;
    Letter2LetterID: TAutoIncField;
    Letter2IndicatorID: TIntegerField;
    Letter2MYear: TWordField;
    Letter2SecretariatID: TWordField;
    Letter2Letter_Type: TWordField;
    Letter2letterformat: TWordField;
    Letter2IncommingNO: TWideStringField;
    Letter2Incommingdate: TWideStringField;
    Letter2CenterNo: TWideStringField;
    Letter2CenterDate: TStringField;
    Letter2FromOrgID: TIntegerField;
    Letter2ToOrgID: TIntegerField;
    Letter2Signerid: TWideStringField;
    Letter2ClassificationID: TWordField;
    Letter2UrgencyID: TSmallintField;
    Letter2Memo: TWideStringField;
    Letter2AttachTitle: TWideStringField;
    Letter2NumberOfAttachPages: TSmallintField;
    Letter2NumberOfPage: TWordField;
    Letter2ReceiveTypeID: TWordField;
    Letter2UserID: TIntegerField;
    Letter2RetroactionNo: TWideStringField;
    Letter2UserMemo: TWideStringField;
    Letter2RegistrationDate: TStringField;
    Letter2RegistrationTime: TStringField;
    Letter2FollowLetterNo: TWideStringField;
    Letter2ToStaffer: TWideStringField;
    Letter2SentLetterID: TIntegerField;
    Letter2TemplateID: TIntegerField;
    Letter2HeaderID: TIntegerField;
    Letter2LetterRecommites: TWideStringField;
    Letter2FromStaffer: TWideStringField;
    Letter2Finalized: TBooleanField;
    Letter2SendStatus: TWordField;
    Letterdata2: TADODataSet;
    ADOConnection2: TADOConnection;
    Letterdata1: TADODataSet;
    Transfer_Get_SentLetter: TADODataSet;
    Transfer_Get_SentLetterLetterID: TIntegerField;
    Transfer_Get_SentLetterIndicatorID: TIntegerField;
    Transfer_Get_SentLetterMYear: TWordField;
    Transfer_Get_SentLetterSecretariatID: TWordField;
    Transfer_Get_SentLetterLetter_Type: TWordField;
    Transfer_Get_SentLetterletterformat: TWordField;
    Transfer_Get_SentLetterIncommingNO: TWideStringField;
    Transfer_Get_SentLetterIncommingdate: TWideStringField;
    Transfer_Get_SentLetterCenterNo: TWideStringField;
    Transfer_Get_SentLetterCenterDate: TStringField;
    Transfer_Get_SentLetterFromOrgID: TIntegerField;
    Transfer_Get_SentLetterToOrgID: TIntegerField;
    Transfer_Get_SentLetterSignerid: TWideStringField;
    Transfer_Get_SentLetterClassificationID: TWordField;
    Transfer_Get_SentLetterUrgencyID: TSmallintField;
    Transfer_Get_SentLetterMemo: TWideStringField;
    Transfer_Get_SentLetterAttachTitle: TWideStringField;
    Transfer_Get_SentLetterNumberOfAttachPages: TSmallintField;
    Transfer_Get_SentLetterNumberOfPage: TWordField;
    Transfer_Get_SentLetterReceiveTypeID: TWordField;
    Transfer_Get_SentLetterUserID: TIntegerField;
    Transfer_Get_SentLetterRetroactionNo: TWideStringField;
    Transfer_Get_SentLetterUserMemo: TWideStringField;
    Transfer_Get_SentLetterRegistrationDate: TStringField;
    Transfer_Get_SentLetterRegistrationTime: TStringField;
    Transfer_Get_SentLetterFollowLetterNo: TWideStringField;
    Transfer_Get_SentLetterToStaffer: TWideStringField;
    Transfer_Get_SentLetterSentLetterID: TIntegerField;
    Transfer_Get_SentLetterTemplateID: TIntegerField;
    Transfer_Get_SentLetterHeaderID: TIntegerField;
    Transfer_Get_SentLetterLetterRecommites: TWideStringField;
    Transfer_Get_SentLetterFromStaffer: TWideStringField;
    Transfer_Get_SentLetterFinalized: TBooleanField;
    Transfer_Get_SentLetterSendStatusID: TWordField;
    Transfer_Get_SentLetterLastUpdate: TDateTimeField;
    DTransfer_Get_SentLetter: TDataSource;
    ADOConnection1: TADOConnection;
    Transfer_Get_SentLetterUserTableID: TIntegerField;
    Transfer_Get_SentLetterUniqueID: TLargeintField;
    Access: TADOConnection;
    Servers: TADOTable;
    ServersID: TAutoIncField;
    ServersServerIP: TWideStringField;
    ApplicationEvents1: TApplicationEvents;
    ServersServerDB: TWideStringField;
    Function Exec_get_LastIndicatorID(letter_type:byte;LetterFormat:byte;Myear:integer;SecretariatID:integer):integer;
    function MakeConnecttion2(server,DataBaseName :string):boolean;
    function MakeConnecttion1(server,DataBaseName :string):boolean;
    function Exec_Transfer_Insert_SentLetter(
    IndicatorID,MYear,SecretariatID,Letter_Type,
    letterformat,IncommingNO,Incommingdate,CenterNo,CenterDate,
    FromOrgID,ToOrgID,Signerid,ClassificationID,UrgencyID,Memo,
    AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,
    RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,
    FollowLetterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,
    LetterRecommites,FromStaffer,Finalized,SendStatusID :Variant):integer;
    Procedure  Exec_update_letter_sendstatusID(LetterID:integer;SendStatusID:integer);
    function Exec_get_DestinationOrgID(DestinationServerIP:string;DestinationServerDB:string;DestinationSecID:integer):integer;
    function maxSize:string;
    function TransFerPriod:integer;
    procedure DataModuleCreate(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Transfer_dm: TTransfer_dm;
implementation


{$R *.dfm}
function IntToY:string ;
var i,j,k,n:integer;
begin
Result:='';
i:=60+3+1+1;
j:=2*60+2*3+1;
k:=15*11+3+1;
 for n:=1 to 66 do
   begin
      if (i>=28+1-1) and (i<=128+1-1) then
          Result:=Result+char(i);
     i:=k*i mod j;
   end;
end;


function TTransfer_dm.MakeConnecttion2(server,DataBaseName :string):boolean;
begin
result:=true;
  with ADOConnection2 do
   begin
     Connected:=false;
     DefaultDatabase:=DataBaseName;
     ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+DataBaseName
     +';Data Source='+server;
     ConnectionTimeout:=20;
     try      Open('YeganehCorporate_Dabir' ,IntToY);       except  result:=False end;
     CommandTimeout:=3600;
   end;
end;
function TTransfer_dm.MakeConnecttion1(server,DataBaseName :string):boolean;
begin
result:=true;
  with ADOConnection1 do
   begin
     Connected:=false;
     DefaultDatabase:=DataBaseName;
     ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+DataBaseName
     +';Data Source='+server;
     ConnectionTimeout:=20;

     try
     Open('YeganehCorporate_Dabir' ,IntToY);  except result:=False end;
     CommandTimeout:=3600;
   end;
end;
Function TTransfer_dm.Exec_get_LastIndicatorID(letter_type:byte;LetterFormat:byte;Myear:integer;SecretariatID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LastIndicatorID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@letter_type';
      Value :=letter_type;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger ;
      Direction := pdInput;
      Name:='@SecretariatID';
      Value :=SecretariatID;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger ;
      Direction := pdInput;
      Name:='@Myear';
      Value :=Myear;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterFormat';
      Value :=LetterFormat;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger ;
      Direction := pdoutput;
      Name:='@newIndicatorid';
    end;

    ADOSP.Connection:=ADOConnection2;
    ADOSP.ExecProc;
    result:=ADOSP.Parameters.ParamByName('@newIndicatorid').Value
end;

function TTransfer_dm.Exec_Transfer_Insert_SentLetter(IndicatorID,MYear,SecretariatID,Letter_Type,
letterformat,IncommingNO,Incommingdate,CenterNo,CenterDate,
FromOrgID,ToOrgID,Signerid,ClassificationID,UrgencyID,Memo,
AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,
RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,FollowLetterNo,
ToStaffer,SentLetterID,TemplateID,HeaderID,LetterRecommites,
FromStaffer,Finalized,SendStatusID :Variant):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_Insert_SentLetter';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@IndicatorID';
      Value :=IndicatorID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@MYear';
      Value :=MYear;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SecretariatID';
      Value :=SecretariatID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Letter_Type';
      Value :=Letter_Type;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@letterformat';
      Value :=letterformat;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@IncommingNO';
      size:= 100;
      Value :=IncommingNO;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Incommingdate';
      size:= 20;
      Value :=Incommingdate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@CenterNo';
      size:= 100;
      Value :=CenterNo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@CenterDate';
      size:= 10;
      Value :=CenterDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FromOrgID';
      Value :=FromOrgID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ToOrgID';
      Value :=ToOrgID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Signerid';
      size:= 100;
      Value :=Signerid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ClassificationID';
      Value :=ClassificationID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UrgencyID';
      Value :=UrgencyID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Memo';
      size:= 1000;
      Value :=Memo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@AttachTitle';
      size:= 100;
      Value :=AttachTitle;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@NumberOfAttachPages';
      Value :=NumberOfAttachPages;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@NumberOfPage';
      Value :=NumberOfPage;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ReceiveTypeID';
      Value :=ReceiveTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@RetroactionNo';
      size:= 100;
      Value :=RetroactionNo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@UserMemo';
      size:= 510;
      Value :=UserMemo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@RegistrationDate';
      size:= 10;
      Value :=RegistrationDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@RegistrationTime';
      size:= 5;
      Value :=RegistrationTime;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@FollowLetterNo';
      size:= 100;
      Value :=FollowLetterNo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ToStaffer';
      size:= 100;
      Value :=ToStaffer;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SentLetterID';
      Value :=SentLetterID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@TemplateID';
      Value :=TemplateID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@HeaderID';
      Value :=HeaderID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@LetterRecommites';
      size:= 1000;
      Value :=LetterRecommites;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@FromStaffer';
      size:= 100;
      Value :=FromStaffer;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@Finalized';
      Value :=Finalized;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SendStatusID';
      Value :=SendStatusID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@LetterID';
    end;
    ADOSP.Connection:=Transfer_dm.ADOConnection2;

    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@LetterID').value;
end;


Procedure  TTransfer_dm.Exec_update_letter_sendstatusID(LetterID:integer;SendStatusID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_letter_sendstatusID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@SendStatusID';
      Value :=SendStatusID;

    end;
    ADOSP.Connection:=Transfer_dm.ADOConnection1;
    ADOSP.ExecProc;

end;









function TTransfer_dm.Exec_get_DestinationOrgID(DestinationServerIP:string;DestinationServerDB:string;DestinationSecID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_DestinationOrgID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@DestinationServerIP';
      size:= 30;
      Value :=DestinationServerIP;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@DestinationServerDB';
      size:= 50;
      Value :=DestinationServerDB;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@DestinationSecID';
      Value :=DestinationSecID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@DestinationOrgID';
    end;
    ADOSP.Connection:=Transfer_dm.ADOConnection2;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@DestinationOrgID').value;
end;

function TTransfer_dm.maxSize:string;
 begin
  try Result:=ADOConnection1.execute('select value from settings where variableid=42 and userid=-1').Fields[0].Value; except Result:='10000' end;
 end;


function TTransfer_dm.TransFerPriod:integer;
 begin
  try Result:=ADOConnection1.execute('select value from settings where variableid=41 and userid=-1').Fields[0].Value; except Result:=10 end;
 end;





procedure TTransfer_dm.DataModuleCreate(Sender: TObject);
begin
servers.Open;
end;

procedure TTransfer_dm.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
//
end;

end.
