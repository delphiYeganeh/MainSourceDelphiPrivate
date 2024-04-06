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
    Transfer_Sent_RelatedSecs: TADOStoredProc;
    DTransfer_Sent_RelatedSecs: TDataSource;
    Tray: TPopupMenu;
    Show1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    YDBGrid2: TYDBGrid;
    YDBGrid1: TYDBGrid;
    Transfer: TButton;
    Label1: TLabel;
    ProgressBar2: TProgressBar;
    Button1: TButton;
    ErrorLog: TMemo;
    CiaTray1: TCiaTray;
    Button2: TButton;
    SaveDialog: TSaveDialog;
    Transfer_Sent_RelatedSecsRelatedSecretariatID: TAutoIncField;
    Transfer_Sent_RelatedSecsRelatedSecretariatTitle: TWideStringField;
    Transfer_Sent_RelatedSecsDestinationOrgID_inSource: TIntegerField;
    Transfer_Sent_RelatedSecsDestinationSecID: TIntegerField;
    Transfer_Sent_RelatedSecsDestinationServerIP: TStringField;
    Transfer_Sent_RelatedSecsDestinationServerDB: TStringField;
    Transfer_Sent_RelatedSecsNumber_of_letters: TIntegerField;
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
    procedure SendLetter1;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

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






procedure   TFrmain.SendLetter1;
 var ToSecID,letterid,IndicatorID: integer;
Toorgid :integer;
begin
 with Transfer_dm,Transfer_Get_SentLetter,Parameters do
  begin
   Close;
   ParamByName('@RelatedSecretariatID').value:=Transfer_Sent_RelatedSecsRelatedSecretariatID.AsInteger;
   ParamByName('@FromDate').value:=FromDate.Text;
   try Open; except ErrorLog.Lines.add('Error in Opening Sent Letter in '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString+
     '(Transfer_Get_SentLetter('+Transfer_Sent_RelatedSecsRelatedSecretariatID.AsString+','+FromDate.Text+'))'); end;
   ProgressBar1.Max:=RecordCount;
  end; {with}

ProgressBar2.Position:=0;

ToSecID:=Transfer_Sent_RelatedSecsDestinationSecID.AsInteger;

with Transfer_dm,letter2 do
while not Transfer_Get_SentLetter.eof do
begin
 try  IndicatorID:=Exec_get_LastIndicatorID(
                1   {Letter_Type},
                2  {letterformat},
               Transfer_Get_SentLetter.FieldbyName('MYear').value,
               ToSecID );
 except
    ErrorLog.Lines.add('Error in Get Last IndicatorID on '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString+
     '(get_LastIndicatorID(1,2,'+Transfer_Get_SentLetter.FieldbyName('MYear').AsString+','+IntToStr(ToSecID)+'))');
    Transfer_Get_SentLetter.Next;
    Continue;
  end;

 try
 Toorgid:=Transfer_dm.Exec_get_DestinationOrgID(Transfer_dm.ServersServerIP.AsString,Transfer_dm.ServersServerDB.AsString,Transfer_Get_SentLetterSecretariatID.AsInteger);
 except
    ErrorLog.Lines.add('Error in Get Destination OrgID on '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString+
    '( exe get_DestinationOrgID('+Transfer_dm.ServersServerIP.AsString+','+Transfer_dm.ServersServerDB.AsString+','+Transfer_Get_SentLetterSecretariatID.AsString+'))  œ»Ì—Œ«‰Â —ÊÌ ”—Ê— „»œ« œ— ”—Ê— „ﬁ’œ  ⁄—Ì› ‰‘œÂ «” ');
    Transfer_Get_SentLetter.Next;
    Continue;
  end;
 
 try
 with Transfer_Get_SentLetter do
   LetterID:=Exec_Transfer_Insert_SentLetter(IndicatorID,
      FieldbyName('MYear').value,
      ToSecID,
      1 {LetterType},
      2 {letterformat},
      FieldbyName('IndicatorID').value,    //incomming noto be
      FieldbyName('RegistrationDate').value,  //incommingdate
      FieldbyName('CenterNo').value,
      FieldbyName('CenterDate').value,
      5,//FieldbyName('FromOrgID').value,
      Toorgid,   //ToOrgID,
      FieldbyName('Signerid').value,
      FieldbyName('ClassificationID').value,
      FieldbyName('UrgencyID').value,
      FieldbyName('Memo').value,
      FieldbyName('AttachTitle').value,
      FieldbyName('NumberOfAttachPages').value,
      FieldbyName('NumberOfPage').value,
      FieldbyName('ReceiveTypeID').value,
      FieldbyName('UserID').value,
      FieldbyName('RetroactionNo').value,
      FieldbyName('UserMemo').value,
      FieldbyName('RegistrationDate').value,
      FieldbyName('RegistrationTime').value,
      FieldbyName('FollowLetterNo').value,
      '' {ToStaffer},  //tob
      FieldbyName('SentLetterID').value,
      FieldbyName('TemplateID').value,
      FieldbyName('HeaderID').value,
      FieldbyName('LetterRecommites').value,
      FieldbyName('FromStaffer').value,
      FieldbyName('Finalized').value,
      4 {SendStatus});
 except ErrorLog.Lines.add('Error in insert Letter on '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString);
    Transfer_Get_SentLetter.Next;
    Continue;
  end;

   with Letterdata1 do
       begin
        close;
        Parameters.ParamByName('@letterid').Value:=Transfer_Get_SentLetter.FieldbyName('LetterID').value;
//        Parameters.ParamByName('@MaxSize').value:=Transfer_dm.maxSize;
        Open;
       end;

      with Letterdata2 do
       begin
        close;
        Parameters.ParamByName('@letterid').Value:=letterid;
         try Open;
          except ErrorLog.Lines.add('Error in read  Letter image on '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString) end;

       end;

while not Letterdata1.eof  do
 with Letterdata2 do
  begin
    insert;
    FieldbyName('LetterID').value:=letterid;
    FieldbyName('PageNumber').value:=Letterdata1.FieldbyName('PageNumber').value;
    FieldbyName('Image').value:=Letterdata1.FieldbyName('Image').value;
    FieldbyName('extention').value:=Letterdata1.FieldbyName('extention').value;
    FieldbyName('Description').value:=Letterdata1.FieldbyName('Description').value;
    try post;           except ErrorLog.Lines.add('Error in insert  Letter image on '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString) end;

    Letterdata1.Next;
   end;

   Transfer_Get_SentLetter.Next;
   Transfer_dm.Exec_update_letter_sendstatusID(Transfer_Get_SentLetterLetterID.AsInteger,3);
   ProgressBar2.Position:=ProgressBar2.Position+1;
end; {while}
  ProgressBar2.Position:=0;
  ErrorLog.Lines.add('Transfer data from '+Transfer_dm.ServersServerIP.AsString+' to '+ Transfer_Sent_RelatedSecsDestinationServerIP.AsString+' Has Done!');
end ;


procedure TFrmain.DotransFer;

begin
  ProgressBar1.Show;
  ProgressBar2.Show;
  if not Transfer_dm.MakeConnecttion1(Transfer_dm.ServersServerIP.AsString,'ydabir') then
    begin
     ErrorLog.Lines.add('Error in Connect to Source Server');
     exit;
    end;
  Transfer_Sent_RelatedSecs.Close;
  Transfer_Sent_RelatedSecs.Open;
  Transfer_Sent_RelatedSecs.First;
  ProgressBar1.Max:=Transfer_Sent_RelatedSecs.RecordCount+1;
  ProgressBar1.Position:=0;

with Transfer_Sent_RelatedSecs do
while not eof do
 begin
   if Transfer_Sent_RelatedSecsNumber_of_letters.Value=0 then
     begin
        next;
        ProgressBar1.Position:= ProgressBar1.Position+1;
        Continue;
     end;{if}

if not Transfer_dm.MakeConnecttion2(Transfer_Sent_RelatedSecsDestinationServerIP.AsString,Transfer_Sent_RelatedSecsDestinationServerDB.AsString) then
   begin
     next;
     ProgressBar1.Position:= ProgressBar1.Position+1;
      ErrorLog.Lines.add('Error in Connect to '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString+' db : '+Transfer_Sent_RelatedSecsDestinationServerIP.AsString);
     Continue;
  end ;  {if}

    SendLetter1;

  ProgressBar1.Position:= ProgressBar1.Position+1;
  Next;
end;{while get_related}
ProgressBar1.Hide;
ProgressBar2.Hide;
end;

procedure TFrmain.Edit3Change(Sender: TObject);
begin
 Timer.Interval:=60000*Transfer_dm.TransFerPriod
end;

procedure TFrmain.FormCreate(Sender: TObject);
begin
 ChangeStatus(true);
FromDate.Text:=ShamsiIncDate(ShamsiString(Now),0,-3,0);


end;

procedure TFrmain.TimerTimer(Sender: TObject);
begin
with Transfer_dm,Servers do
 begin
  first;
  while not eof do
    begin
     if not Transfer_dm.MakeConnecttion1(Transfer_dm.ServersServerIP.AsString,'ydabir') then
      begin
       ErrorLog.Lines.add('Error in Connect to '+Transfer_dm.ServersServerIP.AsString);
       Continue;
      end;
     DoTransfer;
     next;
    end;
end;
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
  Transfer.Caption:=' Êﬁ› «‰ ﬁ«·'
 else
  Transfer.Caption:='‘—Ê⁄ «‰ ﬁ«·'
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
with Transfer_dm,Servers do
 begin
  first;
  while not eof do
    begin
     if not Transfer_dm.MakeConnecttion1(Transfer_dm.ServersServerIP.AsString,Transfer_dm.ServersServerDB.AsString) then
       ErrorLog.Lines.add('Error in Connect to '+Transfer_dm.ServersServerIP.AsString)
      else
       DoTransfer;
     next;
    end;
end;
end;

procedure TFrmain.Button2Click(Sender: TObject);
begin
if SaveDialog.Execute then
  ErrorLog.Lines.SaveToFile(SaveDialog.FileName);
end;

end.



