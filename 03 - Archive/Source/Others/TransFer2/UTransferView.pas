unit UTransferView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, ADODB, ExtCtrls, UemsVCL, DBCtrls,
  Grids, DBGrids, YDbgrid, uCiaTrayIcon, Menus;

type
  TFrmain = class(TForm)
    Number: TLabel;
    Label7: TLabel;
    FromDate: TShamsiDateEdit;
    Timer: TTimer;
    ProgressBar1: TProgressBar;
    Transfer_shared_RelatedSecs: TADOStoredProc;
    DTransfer_shared_RelatedSecs: TDataSource;
    Transfer_shared_RelatedSecsRelatedSecretariatID: TAutoIncField;
    Transfer_shared_RelatedSecsRelatedSecretariatTitle: TWideStringField;
    Transfer_shared_RelatedSecsDestinationOrgID_inSource: TIntegerField;
    Transfer_shared_RelatedSecsServerIP: TStringField;
    Transfer_shared_RelatedSecsDbName: TStringField;
    Transfer_shared_RelatedSecsDestinationSecID: TIntegerField;
    Tray: TPopupMenu;
    Show1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Transfer_shared_RelatedSecsRelationType: TWordField;
    Transfer_shared_RelatedSecsSourceSecID: TIntegerField;
    YDBGrid2: TYDBGrid;
    YDBGrid1: TYDBGrid;
    Transfer: TButton;
    Label1: TLabel;
    ProgressBar2: TProgressBar;
    StatusPanel: TPanel;
    Button1: TButton;
    CiaTray: TCiaTray;
    DataSource1: TDataSource;
    procedure DoTransfer;
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure ChangeStatus(Run:boolean);
    procedure TransferClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure shareLetter;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmain: TFrmain;

implementation

uses YShamsiDate, UTransferDm;

{$R *.dfm}

function hexString(s:WideString):WideString;
var i: integer;
m: string;
begin

 for i:=1 to length(s) do
  m:=m+IntToHex(byte(s[i]),2);
  Result:=m
end;


procedure   TFrmain.shareLetter;
 var Src_letterid,
 Dest_LetterFieldValueID,
 Dest_Letterid,Dest_LetterDataID,Dest_RecommiteID,ToorgID: integer;
 lastUpdate:TDateTime;
 cmd:WideString;
begin
  with Transfer_dm,Transfer_Get_ShareLetter,Parameters do
  begin
   Close;
   ParamByName('@RelatedSecretariatID').value:=Transfer_shared_RelatedSecsRelatedSecretariatID.AsInteger;
   ParamByName('@FromDate').value:=FromDate.Text;
   Open;
   ProgressBar1.Max:=RecordCount;
  end; {with}

ProgressBar2.Position:=0;

while not Transfer_dm.Transfer_Get_ShareLetter.eof do
begin
Src_letterid:=Transfer_dm.Transfer_Get_ShareLetterLetterid.AsInteger;
Transfer_dm.Get_SrcLetter(Src_letterid);
ToorgID:=Transfer_dm.Exec_Transfer_Get_OrgID_By_UniqueID_and_Title(Transfer_dm.SrcLetterOrgUniqueID.AsLargeInt,Transfer_dm.SrcLetterOrgTitle.AsString);

Dest_Letterid:=Transfer_dm.Exec_Transfer_Get_Letterid_By_UniqueID(Transfer_dm.Transfer_Get_ShareLetterUniqueID.AsInteger,lastUpdate);
with Transfer_dm,SrcLetter do
 if Dest_Letterid<0 then
   Dest_Letterid:=Exec_Transfer_Insert_SharedLetter(
   FieldbyName('IndicatorID').value,       FieldbyName('MYear').value,
   FieldbyName('SecretariatID').value,     FieldbyName('Letter_Type').value,
   FieldbyName('letterformat').value,      FieldbyName('incommingNo').value,
   FieldbyName('incommingdate').value,     FieldbyName('CenterNo').value,
   FieldbyName('CenterDate').value,        FieldbyName('FromOrgID').value,
   ToorgID,   //ToOrgID,
   FieldbyName('Signerid').value,          FieldbyName('ClassificationID').value,
   FieldbyName('UrgencyID').value,         FieldbyName('Memo').value,
   FieldbyName('AttachTitle').value,       FieldbyName('NumberOfAttachPages').value,
   FieldbyName('NumberOfPage').value,      FieldbyName('ReceiveTypeID').value,
   FieldbyName('UserID').value,            FieldbyName('RetroactionNo').value,
   FieldbyName('UserMemo').value,          FieldbyName('RegistrationDate').value,
   FieldbyName('RegistrationTime').value,  FieldbyName('FollowLetterNo').value,
   FieldbyName('ToStaffer').Value,
   FieldbyName('SentLetterID').value,      FieldbyName('TemplateID').value,
   FieldbyName('HeaderID').value,          FieldbyName('LetterRecommites').value,
   FieldbyName('FromStaffer').value,       FieldbyName('Finalized').value,
   FieldbyName('SendStatusID').value,        FieldbyName('LastUpdate').value,
   FieldbyName('UserTableID').value,       FieldbyName('UniqueID').value   )
else
  if lastUpdate<FieldbyName('LastUpdate').value  then
     Exec_Trunsfer_update_Letter(
   Dest_Letterid,          FieldbyName('incommingNo').value,
   FieldbyName('incommingdate').value,     FieldbyName('CenterNo').value,
   FieldbyName('CenterDate').value,        FieldbyName('ClassificationID').value,
   FieldbyName('UrgencyID').value,         FieldbyName('Memo').value,
   FieldbyName('AttachTitle').value,       FieldbyName('NumberOfAttachPages').value,
   FieldbyName('NumberOfPage').value,      FieldbyName('ReceiveTypeID').value,
   FieldbyName('RetroactionNo').value,     FieldbyName('UserMemo').value,
   FieldbyName('FollowLetterNo').value,    FieldbyName('ToStaffer').Value,
   FieldbyName('LetterRecommites').value,  FieldbyName('FromStaffer').value,
   FieldbyName('Finalized').value,         FieldbyName('UserTableID').value ,
   FieldbyName('LastUpdate').value            );
   
//---------------------letterdata

  Transfer_dm.Get_SrcLetterData(Src_letterid);
   with Transfer_dm,SrcLetterData do
    while not eof do
    begin
    
      Dest_LetterDataID:=Transfer_dm.Exec_Transfer_Get_LetterDataID_By_UniqueID(Transfer_dm.SrcLetterDataUniqueID.AsLargeInt,lastUpdate);
      if Dest_LetterDataID <0 then
        begin
          Get_Src1Letterdata(SrcLetterDataLetterDataID.AsInteger);
          Get_Dest1Letterdata(0);

          Dest1LetterData.Insert;
          Dest1LetterDataLetterID.value:=Dest_Letterid;
          Dest1LetterDataPageNumber.value:=Src1LetterDataPageNumber.value;
          Dest1LetterDataImage.value:=Src1LetterDataImage.value;
          Dest1LetterDataextention.value:=Src1LetterDataextention.value;
          Dest1LetterDataDescription.value:=Src1LetterDataDescription.value;
          Dest1LetterDataLastUpdate.value:=Src1LetterDataLastUpdate.value;
          Dest1LetterDataUniqueID.value:=Src1LetterDataUniqueID.value;
          Dest1LetterData.Post;
        end
(*     else
        if (lastUpdate<SrcLetterDataLastUpdate.Value) then
         if  (SrcLetterDataExtention.AsInteger = 3{word}) then
        begin
          Get_Src1Letterdata(SrcLetterDataLetterDataID.AsInteger);
         { cmd:=hexString(Src1LetterdataImage.AsVariant);
          ADOConnection2.Execute('exec sp_executesql N''update letterdata set Image=@P3 '+
             'where letterdataid=@p1 '',  N''@P1 int,@P3 image'','+IntToStr(Dest_LetterDataID)+',0x'+cmd);
}         Get_Dest1Letterdata(Dest_LetterDataID);

          Dest1LetterData.edit;
          Dest1LetterDataImage.value:=Src1LetterDataImage.value;
          Dest1LetterDataDescription.value:=Src1LetterDataDescription.value;
          Dest1LetterDataLastUpdate.value:=Src1LetterDataLastUpdate.value;
          Dest1LetterData.Post;
        end*);

       next;
     end;
// ------------------------- Recommites
   Transfer_dm.Get_SrcRecommites(Src_letterid);
 with Transfer_dm,SrcRecommites do
  while not eof do
   begin
     Dest_RecommiteID:=Exec_Transfer_Get_RecommiteID_By_UniqueID(SrcRecommitesUniqueID.AsLargeInt,lastUpdate);
     if Dest_RecommiteID<0 then
       begin
         ToorgID:=Transfer_dm.Exec_Transfer_Get_OrgID_By_UniqueID_and_Title(SrcRecommitesOrgUniqueID.AsLargeInt,SrcRecommitesOrgTitle.AsString);
         Exec_Transfer_insert_ReCommites(
   Dest_Letterid             ,       FieldbyName('ID').value,
   FieldbyName('Type').value,          FieldbyName('ParentId').value,
   ToorgID                   ,          FieldbyName('Paraph').value,
   FieldbyName('RecommiteDate').value,  FieldbyName('UserID').value,
   FieldbyName('IsCopy').value,         FieldbyName('Proceeded').value,
   FieldbyName('ProceedDate').value,    FieldbyName('staffmemo').value,
   FieldbyName('viewdate').value,       FieldbyName('OrgStaff').value,
   FieldbyName('DeadLineDate').value,   FieldbyName('LastUpdate').value,
     FieldbyName('UniqueID').value);
    
       end
     else
  if lastUpdate<FieldbyName('LastUpdate').value then
       Exec_Trunsfer_update_ReCommites(
   Dest_RecommiteID     ,  FieldbyName('Paraph').value,
   FieldbyName('IsCopy').value,         FieldbyName('Proceeded').value,
   FieldbyName('ProceedDate').value,
   FieldbyName('DeadLineDate').value,   FieldbyName('LastUpdate').value);

  next;
   end;{while}
// ------------------------   FieldValue
   Transfer_dm.Get_SrcLetterFieldValue(Src_letterid);
 with Transfer_dm,SrcLetterFieldValue do
  while not eof do
   begin
     Dest_LetterFieldValueID:=Exec_Transfer_Get_LetterFieldValueID_By_UniqueID(SrcRecommitesUniqueID.AsLargeInt,lastUpdate);
     if Dest_LetterFieldValueID<0 then
       begin
         Exec_Transfer_insert_LetterFieldValue(
   Dest_Letterid             ,       FieldbyName('FieldID').value,
   FieldbyName('FieldValue').value,FieldbyName('Lastupdate').value,
     FieldbyName('UniqueID').value);
       end
       else
        Exec_Trunsfer_update_LetterFieldValue(Dest_LetterFieldValueID,
                                              FieldbyName('FieldValue').value,  FieldbyName('LastUpdate').Value);

       next;
   end;{while}

   Transfer_dm.Transfer_Get_ShareLetter.Next;
   ProgressBar2.Position:=ProgressBar2.Position+1;
end; {while}

end ;


procedure TFrmain.DotransFer;

begin
  ProgressBar1.Show;
  ProgressBar2.Show;

  Transfer_shared_RelatedSecs.Open;
  Transfer_shared_RelatedSecs.First;
  ProgressBar1.Max:=Transfer_shared_RelatedSecs.RecordCount+1;
  ProgressBar1.Position:=0;
with Transfer_shared_RelatedSecs do
while not eof do
 begin
if not Transfer_dm.MakeConnecttion2(Transfer_shared_RelatedSecsServerIP.AsString,Transfer_shared_RelatedSecsDbName.AsString) then
   begin
     next;
     ProgressBar1.Position:= ProgressBar1.Position+1;
     StatusPanel.Caption:='ÎØÇ ÏÑ ÇÊÕÇá Èå ÓÑæÑ ãÞÕÏ' ;
     Continue;
  end;  {if}

    shareLetter;

  ProgressBar1.Position:= ProgressBar1.Position+1;
  Next;
end;{while get_related}
 ProgressBar1.Hide;
 ProgressBar2.Hide;
  Transfer_shared_RelatedSecs.close;
  Transfer_shared_RelatedSecs.Open;
end;

procedure TFrmain.Edit3Change(Sender: TObject);
begin
 Timer.Interval:=60000*Transfer_dm.TransFerPriod
end;

procedure TFrmain.FormCreate(Sender: TObject);
begin

FromDate.Text:=ShamsiIncDate(ShamsiString(Now),0,-1,0);
Transfer_shared_RelatedSecs.Open;
DoTransfer;
ChangeStatus(true);

end;

procedure TFrmain.TimerTimer(Sender: TObject);
begin
 DoTransfer;
end;

procedure TFrmain.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TFrmain.Show1Click(Sender: TObject);
begin
   if not Visible then
      ShowModal;
end;

procedure TFrmain.ChangeStatus(Run:boolean);
begin
Timer.Enabled:=Run;
if Run then
  Transfer.Caption:='ÊæÞÝ ÇäÊÞÇá'
 else
  Transfer.Caption:='ÔÑæÚ ÇäÊÞÇá'
end;

procedure TFrmain.TransferClick(Sender: TObject);
begin
ChangeStatus(not Timer.Enabled);
end;

procedure TFrmain.N1Click(Sender: TObject);
begin
ChangeStatus(true);
end;

procedure TFrmain.N2Click(Sender: TObject);
begin
ChangeStatus(False);
end;

procedure TFrmain.Button1Click(Sender: TObject);
begin
DoTransfer;
end;

end.
