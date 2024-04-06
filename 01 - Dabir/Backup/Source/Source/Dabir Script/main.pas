unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, Grids, DBGrids, DB, ComCtrls, Buttons;

type
  TFmMain = class(TForm)
    Button1: TButton;
    ADOCommand: TADOCommand;
    ProgressBar: TProgressBar;
    Label1: TLabel;
    SubCommand: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    MemoTables: TMemo;
    Memofields: TMemo;
    MemoFunctions: TMemo;
    MemoDatas: TMemo;
    MemoTriggers: TMemo;
    MemoIndexes: TMemo;
    MemoProcedures: TMemo;
    MemoforeinKeys: TMemo;
    Users: TADOTable;
    UsersId: TAutoIncField;
    UsersTitle: TWideStringField;
    UsersUserName: TWideStringField;
    UsersPassWord: TWideStringField;
    UsersAccessID: TWordField;
    UsersDefualtSecretariatID: TWordField;
    UsersIsSecretariantStaffer: TBooleanField;
    UsersFromOrgID: TIntegerField;
    UsersKartableGridInfo: TBlobField;
    UsersDabirGridInfo: TBlobField;
    UsersBeginActiveDate: TStringField;
    UsersEndActiveDate: TStringField;
    UsersAlternativeUserID: TIntegerField;
    UsersSecondOrgID: TIntegerField;
    UsersAlternativebeginDate: TStringField;
    UsersAlternativeEndDate: TStringField;
    UsersHasSecureLetterAccess: TBooleanField;
    UsersEmail: TWideStringField;
    procedure RunCommands(State:string;Memo:Tmemo);
    procedure Button1Click(Sender: TObject);

procedure ChangePassword;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmMain: TFmMain;

implementation

uses Dmu, YShamsiDate, Uconnect;
var success:boolean;
ScriptVersion:string ='5.4.8';


{$R *.dfm}
Procedure RemoveRemark(var s:string);
var i,j: integer;
begin
  while  pos('*/',s)<>0 do
   begin
     j:=pos('*/',s);
     i:=pos('/*',copy(s,1,i-1));
     delete(s,i,j-i+2)
   end;
end;
procedure TFmMain.RunCommands(State:string;Memo:Tmemo);
var i: integer;
s:string;
begin
 Caption:=State;
   with  Memo,Lines  do
   for i:=0 to Count-1 do
     begin
      if trim(UpperCase( Lines[i]))='GO' then
        Begin

         s:= SubCommand.Text;
         RemoveRemark(s);

           ADOCommand.CommandText:=s;
           try
            ADOCommand.Execute;
           except
           on E: Exception do
             begin
              success:=false;
              ShowMessage('Œÿ« œ— «Ã—«Ì Œÿ  '+IntToStr(i)+'   '+e.Message+': '#13#10+S);
             end;
        end;

          Application.ProcessMessages;
          SubCommand.Lines.Clear;
        end
      else
         SubCommand.Lines.add(Lines[i]);
     end;
ProgressBar.Position:=ProgressBar.Position+1;
end;


procedure TFmMain.Button1Click(Sender: TObject);
begin
if  MessageDlg('¬Ì« ‰”ŒÂ Å‘ Ì»«‰ —«  ÂÌÂ ò—œÂ «Ìœø',mtConfirmation,[mbyes,mbno],0)<>mryes then
     exit;
success:=true;
dm.Connect;
Button1.Enabled:=false;

RunCommands('Creating Tables... '    , MemoTables);
RunCommands('Adding Fields ...'      , Memofields);
RunCommands('Creating Functions ... ', MemoFunctions);
RunCommands('Adding Data''s ...'     , MemoDatas);
RunCommands('Creating Triggers ...'  , MemoTriggers);
RunCommands('Creating Indexes ...'   , MemoIndexes);
RunCommands('Creating Procedures ...', MemoProcedures);
 RunCommands('Creating ForeinKeys ...', MemoforeinKeys);  
Caption:='Changing Password...';
try ChangePassword; except end  ;
Caption:='Done';
ProgressBar.Position:=ProgressBar.Position+1;
 if success then
  begin
    ADOCommand.CommandText:='Update Settings set Value='''+ScriptVersion+''' where Variableid=50 and userid=-1';
    ADOCommand.Execute;
    ShowMessage('»« „Ê›ﬁÌ  «Ã—« ‘œ');
    close;
  end;
Button1.Enabled:=True;
ShowMessage('»⁄÷Ì «“  €ÌÌ—«  «⁄„«· ‰‘œ!!!');
ProgressBar.Position:=0

end;

procedure TFmMain.ChangePassword;
begin
users.Open;
users.First;

with users do
while not eof do
 begin
   if length(usersPassWord.AsString)<50 then
    begin
      edit;
      usersPassWord.AsString:=Locked(usersPassWord.AsString,True);
      post;
    end;
   next;
 end;
end;
end.
