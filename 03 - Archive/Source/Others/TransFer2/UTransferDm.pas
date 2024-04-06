unit UTransferDm;

interface

uses
  SysUtils, Classes, ExtCtrls, DB, ADODB,dialogs,Registry,Windows;

type
  TTransfer_dm = class(TDataModule)
    ADOConnection2: TADOConnection;
    Transfer_Get_ShareLetter: TADODataSet;
    DTransfer_Get_ShareLetter: TDataSource;
    ADOConnection1: TADOConnection;
    Transfer_Get_ShareLetterLetterid: TAutoIncField;
    Transfer_Get_ShareLetterUniqueID: TLargeintField;
    SrcLetter: TADOStoredProc;
    SrcLetterLetterID: TAutoIncField;
    SrcLetterIndicatorID: TIntegerField;
    SrcLetterMYear: TWordField;
    SrcLetterSecretariatID: TWordField;
    SrcLetterLetter_Type: TWordField;
    SrcLetterletterformat: TWordField;
    SrcLetterIncommingNO: TWideStringField;
    SrcLetterIncommingdate: TWideStringField;
    SrcLetterCenterNo: TWideStringField;
    SrcLetterCenterDate: TStringField;
    SrcLetterFromOrgID: TIntegerField;
    SrcLetterToOrgID: TIntegerField;
    SrcLetterSignerid: TWideStringField;
    SrcLetterClassificationID: TWordField;
    SrcLetterUrgencyID: TSmallintField;
    SrcLetterMemo: TWideStringField;
    SrcLetterAttachTitle: TWideStringField;
    SrcLetterNumberOfAttachPages: TSmallintField;
    SrcLetterNumberOfPage: TWordField;
    SrcLetterReceiveTypeID: TWordField;
    SrcLetterUserID: TIntegerField;
    SrcLetterRetroactionNo: TWideStringField;
    SrcLetterUserMemo: TWideStringField;
    SrcLetterRegistrationDate: TStringField;
    SrcLetterRegistrationTime: TStringField;
    SrcLetterFollowLetterNo: TWideStringField;
    SrcLetterToStaffer: TWideStringField;
    SrcLetterSentLetterID: TIntegerField;
    SrcLetterTemplateID: TIntegerField;
    SrcLetterHeaderID: TIntegerField;
    SrcLetterLetterRecommites: TWideStringField;
    SrcLetterFromStaffer: TWideStringField;
    SrcLetterFinalized: TBooleanField;
    SrcLetterSendStatusID: TWordField;
    SrcLetterLastUpdate: TDateTimeField;
    SrcLetterUserTableID: TIntegerField;
    SrcLetterUniqueID: TLargeintField;
    SrcLetterOrgTitle: TWideStringField;
    SrcLetterData: TADOStoredProc;
    SrcLetterDataLetterDataID: TAutoIncField;
    SrcLetterDataUniqueID: TLargeintField;
    Src1Letterdata: TADOStoredProc;
    Dest1LetterData: TADOStoredProc;
    Src1LetterdataLetterDataID: TAutoIncField;
    Src1LetterdataLetterID: TIntegerField;
    Src1LetterdataPageNumber: TWordField;
    Src1LetterdataImage: TBlobField;
    Src1Letterdataextention: TWordField;
    Src1LetterdataDescription: TWideStringField;
    Src1LetterdataLastUpdate: TDateTimeField;
    Src1LetterdataUniqueID: TLargeintField;
    Dest1LetterDataLetterDataID: TAutoIncField;
    Dest1LetterDataLetterID: TIntegerField;
    Dest1LetterDataPageNumber: TWordField;
    Dest1LetterDataImage: TBlobField;
    Dest1LetterDataextention: TWordField;
    Dest1LetterDataDescription: TWideStringField;
    Dest1LetterDataLastUpdate: TDateTimeField;
    Dest1LetterDataUniqueID: TLargeintField;
    SrcRecommites: TADOStoredProc;
    SrcRecommitesRecommiteID: TAutoIncField;
    SrcRecommitesLetterID: TIntegerField;
    SrcRecommitesID: TSmallintField;
    SrcRecommitesType: TWordField;
    SrcRecommitesParentId: TSmallintField;
    SrcRecommitesOrgID: TIntegerField;
    SrcRecommitesParaph: TWideStringField;
    SrcRecommitesRecommiteDate: TStringField;
    SrcRecommitesUserID: TWordField;
    SrcRecommitesIsCopy: TBooleanField;
    SrcRecommitesProceeded: TBooleanField;
    SrcRecommitesProceedDate: TStringField;
    SrcRecommitesstaffmemo: TWideStringField;
    SrcRecommitesviewdate: TStringField;
    SrcRecommitesOrgStaff: TWideStringField;
    SrcRecommitesDeadLineDate: TStringField;
    SrcRecommitesLastUpdate: TDateTimeField;
    SrcRecommitesUniqueID: TLargeintField;
    SrcRecommitesOrgTitle: TWideStringField;
    SrcRecommitesOrgUniqueID: TLargeintField;
    SrcLetterFieldValue: TADOStoredProc;
    SrcLetterOrgUniqueID: TLargeintField;
    Transfer_Get_ShareLetterLastupdate: TDateTimeField;
    SrcLetterDataLastUpdate: TDateTimeField;
    SrcLetterDataExtention: TWordField;
    Function Exec_get_LastIndicatorID(letter_type:byte;LetterFormat:byte;Myear:integer;SecretariatID:integer):integer;
    function MakeConnecttion2(server,DataBaseName :string):boolean;
    function MakeConnecttion1(server,DataBaseName :string):boolean;
    function Exec_Transfer_Insert_SharedLetter(
    IndicatorID,MYear,SecretariatID,Letter_Type,
    letterformat,IncommingNO,Incommingdate,CenterNo,CenterDate,
    FromOrgID,ToOrgID,Signerid,ClassificationID,UrgencyID,Memo,
    AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,
    RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,
    FollowLetterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,
    LetterRecommites,FromStaffer,Finalized,SendStatusID ,LastUpdate,UserTableID,UniqueID:Variant):integer;
    function Exec_get_DestinationOrgID(DestinationServerID:integer;DestinationSecID:integer):integer;
    procedure DataModuleCreate(Sender: TObject);
    function maxSize:string;
    function TransFerPriod:integer;
    function Exec_Transfer_Get_Letterid_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
    function Exec_Transfer_Get_OrgID_By_UniqueID_and_Title(UniqueID:integer;Title:widestring):integer;
    procedure Get_SrcRecommites(LetterID: integer);
    procedure Get_SrcLetterFieldValue(LetterID: integer);
    procedure Get_SrcLetter(LetterID: integer);
    procedure Get_SrcLetterData(LetterID: integer);
    function Exec_Transfer_insert_ReCommites(
     LetterID,_ID,_Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,
     ProceedDate,staffmemo,viewdate,OrgStaff,DeadLineDate,LastUpdate,UniqueID:Variant):integer;
    function Exec_Transfer_insert_LetterFieldValue(LetterID,FieldID,FieldValue,LastUpdate,uniqueID:variant):integer;
    function Exec_Transfer_Get_RecommiteID_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
    function Exec_Transfer_Get_LetterDataID_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
    procedure Get_Src1Letterdata(LetterdataID: integer);
    procedure Get_Dest1Letterdata(LetterdataID: integer);
    function Exec_Transfer_Get_LetterFieldValueID_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
    Procedure  Exec_Trunsfer_update_LetterFieldValue(LetterFieldValueID,FieldValue,LastUpdate:Variant);
    Procedure  Exec_Trunsfer_update_Letter(LetterID,IncommingNO,Incommingdate,CenterNo,CenterDate,ClassificationID,UrgencyID,Memo,AttachTitle,
        NumberOfAttachPages,NumberOfPage,ReceiveTypeID,RetroactionNo,UserMemo,FollowLetterNo,ToStaffer,LetterRecommites,FromStaffer,Finalized,
        UserTableID,LastUpdate:Variant);
    Procedure  Exec_Trunsfer_update_ReCommites(RecommiteID,Paraph,IsCopy,Proceeded,ProceedDate,DeadLineDate,LastUpdate:Variant);

      private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Transfer_dm: TTransfer_dm;
implementation


{$R *.dfm}
  const
  RegistryKey = 'Software\yeganeh\dabir';
function IntToY:string ;
var i,j,k,n:integer;
begin
Result:='';
i:=60+3+1+1;
j:=2*60+2*3+1;
k:=15*11+3+1;
 for n:=1 to 61 do
   begin
      if (i>=28+1-1) and (i<=128+1-1) then
          Result:=Result+char(i);
     i:=k*i mod j;
   end;
end;



function TTransfer_dm.MakeConnecttion2(server,DataBaseName :string):boolean;
begin

  with ADOConnection2 do
   begin
     Connected:=false;
     DefaultDatabase:=DataBaseName;
     ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+DataBaseName
     +';Data Source='+server;
     ConnectionTimeout:=30;

     try Open('yeganehCompany_Dabir' ,IntToY);  except result:=False end;
     CommandTimeout:=3600;

   end;
end;
function TTransfer_dm.MakeConnecttion1(server,DataBaseName :string):boolean;
begin

  with ADOConnection1 do
   begin
     Connected:=false;
     DefaultDatabase:=DataBaseName;
     ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+DataBaseName
     +';Data Source='+server;
     ConnectionTimeout:=30;

     try Open('yeganehCompany_Dabir' ,IntToY);  except result:=False end;
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

function TTransfer_dm.Exec_Transfer_Insert_SharedLetter(IndicatorID,MYear,SecretariatID,Letter_Type,
letterformat,IncommingNO,Incommingdate,CenterNo,CenterDate,
FromOrgID,ToOrgID,Signerid,ClassificationID,UrgencyID,Memo,
AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,
RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,FollowLetterNo,
ToStaffer,SentLetterID,TemplateID,HeaderID,LetterRecommites,
FromStaffer,Finalized,SendStatusID,LastUpdate,UserTableID,UniqueID :Variant):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_Insert_SharedLetter';

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
      DataType := ftdatetime;
      Direction := pdInput;
      Name:='@LastUpdate';
      Value :=LastUpdate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserTableID';
      Value :=UserTableID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UniqueID';
      Value :=UniqueID;

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








function TTransfer_dm.Exec_get_DestinationOrgID(DestinationServerID:integer;DestinationSecID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_DestinationOrgID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@DestinationServerID';
      Value :=DestinationServerID;

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

procedure TTransfer_dm.DataModuleCreate(Sender: TObject);
var R: TRegistry;
  ServerName:string;
      DatabaseName: string;
begin
  r:=TRegistry.Create;
  with R do
   begin
    RootKey:=HKEY_CURRENT_USER;
    OpenKey(RegistryKey, True);
    ServerName:=ReadString('ServerName');
    DataBaseName:=ReadString('DataBaseName');
    if DataBaseName='' then  DataBaseName:='Ydabir' ;
   WriteString('DataBaseName', DataBaseName);
   MakeConnecttion1(ServerName,DatabaseName);
end;
end;

function TTransfer_dm.maxSize:string;
 begin
  try Result:=ADOConnection1.execute('select value from settings where variableid=42 and userid=-1').Fields[0].Value; except Result:='10000' end;
 end;


function TTransfer_dm.TransFerPriod:integer;
 begin
  try Result:=ADOConnection1.execute('select value from settings where variableid=41 and userid=-1').Fields[0].Value; except Result:=10 end;
 end;




function TTransfer_dm.Exec_Transfer_Get_Letterid_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_Get_Letterid_By_UniqueID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UniqueID';
      Value :=UniqueID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@Letterid';
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdoutput;
      Name:='@lastUpdate';
    end;

    ADOSP.Connection:=ADOConnection2;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Letterid').value;
   lastUpdate:=ADOSP.Parameters.ParamByname('@lastUpdate').value;
end;



function TTransfer_dm.Exec_Transfer_Get_OrgID_By_UniqueID_and_Title(UniqueID:integer;Title:widestring):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_Get_OrgID_By_UniqueID_and_Title';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UniqueID';
      Value :=UniqueID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Title';
      size:= 200;
      Value :=Title;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@ID';
    end;
    ADOSP.Connection:=ADOConnection2;
     ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@ID').value;
end;

procedure TTransfer_dm.Get_SrcLetter(LetterID: integer);
  begin
    with SrcLetter do
     begin
       Close;
       Parameters.ParamByName('@Letterid').Value:=LetterID;
       Open;
     end;
  end;

procedure TTransfer_dm.Get_SrcRecommites(LetterID: integer);
  begin
    with SrcRecommites do
     begin
       Close;
       Parameters.ParamByName('@Letterid').Value:=LetterID;
       Open;
     end;
  end;


 procedure TTransfer_dm.Get_SrcLetterFieldValue(LetterID: integer);
  begin
    with SrcLetterFieldValue do
     begin
       Close;
       Parameters.ParamByName('@Letterid').Value:=LetterID;
       Open;
     end;
  end;


  procedure TTransfer_dm.Get_Src1Letterdata(LetterdataID: integer);
  begin
    with Src1Letterdata do
     begin
       Close;
       Parameters.ParamByName('@LetterdataID').Value:=LetterdataID;
       Open;
     end;
  end;

procedure TTransfer_dm.Get_Dest1Letterdata(LetterdataID: integer);
  begin
    with Dest1LetterData do
     begin
       Close;
       Parameters.ParamByName('@LetterdataID').Value:=LetterdataID;
       Open;
     end;
  end;

procedure TTransfer_dm.Get_SrcLetterData(LetterID: integer);
  begin
    with SrcLetterData do
       begin
        close;
        Parameters.ParamByName('@letterid').Value:=LetterID;
        Parameters.ParamByName('@MaxSize').value:=maxSize;
        Open;
       end;
  end;


function TTransfer_dm.Exec_Transfer_Get_LetterDataID_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_Get_LetterDataID_By_UniqueID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UniqueID';
      Value :=UniqueID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@LetterDataID';
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdoutput;
      Name:='@lastUpdate';
    end;
    
    ADOSP.Connection:=ADOConnection2;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@LetterDataID').value;
   lastUpdate:=ADOSP.Parameters.ParamByname('@lastUpdate').value;
end;

function TTransfer_dm.Exec_Transfer_Get_RecommiteID_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_Get_RecommiteID_By_UniqueID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UniqueID';
      Value :=UniqueID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@RecommiteID';
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdoutput;
      Name:='@lastUpdate';
    end;
    
    ADOSP.Connection:=ADOConnection2;
    ADOSP.ExecProc;

   Result:=ADOSP.Parameters.ParamByname('@RecommiteID').value;
    lastUpdate:=ADOSP.Parameters.ParamByname('@lastUpdate').value;
end;




function TTransfer_dm.Exec_Transfer_Get_LetterFieldValueID_By_UniqueID(UniqueID:integer; var lastUpdate:TDateTime):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_Get_LetterFieldValueID_By_UniqueID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UniqueID';
      Value :=UniqueID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@LetterFieldValueID';
    end;
      with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdoutput;
      Name:='@lastUpdate';
    end;

    ADOSP.Connection:=ADOConnection2;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@LetterFieldValueID').value;

   lastUpdate:=ADOSP.Parameters.ParamByname('@lastUpdate').value;
end;





function TTransfer_dm.Exec_Transfer_insert_ReCommites(
LetterID,_ID,_Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,
ProceedDate,staffmemo,viewdate,OrgStaff,DeadLineDate,LastUpdate,UniqueID:Variant):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_insert_ReCommites';

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
      Name:='@ID';
      Value :=_ID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@_Type';
      Value :=_Type;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ParentId';
      Value :=ParentId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@OrgID';
      Value :=OrgID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Paraph';
      size:= 1000;
      Value :=Paraph;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@RecommiteDate';
      size:= 10;
      Value :=RecommiteDate;

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
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@IsCopy';
      Value :=IsCopy;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@Proceeded';
      Value :=Proceeded;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ProceedDate';
      size:= 10;
      Value :=ProceedDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@staffmemo';
      size:= 510;
      Value :=staffmemo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@viewdate';
      size:= 10;
      Value :=viewdate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@OrgStaff';
      size:= 100;
      Value :=OrgStaff;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@DeadLineDate';
      size:= 10;
      Value :=DeadLineDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdInput;
      Name:='@LastUpdate';
      Value :=LastUpdate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UniqueID';
      Value :=UniqueID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@RecommiteID';
    end;
    ADOSP.Connection:=ADOConnection2;
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@RecommiteID').value;
end;

function TTransfer_dm.Exec_Transfer_insert_LetterFieldValue(LetterID,FieldID,FieldValue,LastUpdate,uniqueID:Variant):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Transfer_insert_LetterFieldValue';

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
      Name:='@FieldID';
      Value :=FieldID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@FieldValue';
      size:= 4000;
      Value :=FieldValue;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@uniqueID';
      Value :=uniqueID;

    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdInput;
      Name:='@LastUpdate';
      Value :=LastUpdate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@LetterFieldValueID';
    end;
    ADOSP.Connection:=ADOConnection2; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@LetterFieldValueID').value;
end;


Procedure  TTransfer_dm.Exec_Trunsfer_update_LetterFieldValue(LetterFieldValueID,FieldValue,LastUpdate:Variant);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Trunsfer_update_LetterFieldValue';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterFieldValueID';
      Value :=LetterFieldValueID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@FieldValue';
      size:= 4000;
      Value :=FieldValue;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdInput;
      Name:='@LastUpdate';
      Value :=LastUpdate;

    end;
    ADOSP.Connection:=ADOConnection2;
    ADOSP.ExecProc;    

end;
Procedure  TTransfer_dm.Exec_Trunsfer_update_Letter(LetterID,IncommingNO,Incommingdate,CenterNo,CenterDate,ClassificationID,UrgencyID,Memo,AttachTitle,
        NumberOfAttachPages,NumberOfPage,ReceiveTypeID,RetroactionNo,UserMemo,FollowLetterNo,ToStaffer,LetterRecommites,FromStaffer,Finalized,
        UserTableID,LastUpdate:Variant);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Trunsfer_update_Letter';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LetterID';
      Value :=LetterID;

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
      Name:='@UserTableID';
      Value :=UserTableID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdInput;
      Name:='@LastUpdate';
      Value :=LastUpdate;

    end;
    ADOSP.Connection:=ADOConnection2; 
    ADOSP.ExecProc;    

end;
Procedure  TTransfer_dm.Exec_Trunsfer_update_ReCommites(RecommiteID,Paraph,IsCopy,Proceeded,ProceedDate,DeadLineDate,LastUpdate:Variant);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Trunsfer_update_ReCommites';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@RecommiteID';
      Value :=RecommiteID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Paraph';
      size:= 1000;
      Value :=Paraph;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@IsCopy';
      Value :=IsCopy;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@Proceeded';
      Value :=Proceeded;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ProceedDate';
      size:= 10;
      Value :=ProceedDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@DeadLineDate';
      size:= 10;
      Value :=DeadLineDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftdatetime;
      Direction := pdInput;
      Name:='@LastUpdate';
      Value :=LastUpdate;

    end;
    ADOSP.Connection:=ADOConnection2; 
    ADOSP.ExecProc;    

end;

end.
