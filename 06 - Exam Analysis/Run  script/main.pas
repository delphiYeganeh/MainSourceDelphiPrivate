unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, Grids, DBGrids, DB, ComCtrls, Buttons, xpman;

type
  TForm1 = class(TForm)
    SqlTxtx: TMemo;
    Button1: TButton;
    ADOCommand: TADOCommand;
    ProgressBar: TProgressBar;
    Label1: TLabel;
    SubCommand: TMemo;
    Number: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    function NumberofCommand:integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Dmu, YShamsiDate, Uconnect;

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
success:boolean;
begin
success:=true;
dm.Connect;
ProgressBar.Max:=NumberofCommand;

Number.Caption:='«Ã—«Ì '+IntToStr(ProgressBar.Max)  +'  œ” Ê— SQL  »—«Ì  »œÌ· »Â ‰”ŒÂ ÃœÌœ';

if  MessageDlg('¬Ì« ‰”ŒÂ Å‘ Ì»«‰ —«  ÂÌÂ ò—œÂ «Ìœø',mtConfirmation,[mbyes,mbno],0)<>mryes then
     exit;

ProgressBar.Position:=0;
Button1.Enabled:=false;
   with  SqlTxtx,Lines  do
   for i:=0 to Count-1 do
     begin
      if trim(UpperCase( Lines[i]))='GO' then
        Begin
          ADOCommand.CommandText:=SubCommand.Text;
          try
          ADOCommand.Execute;
          except
           success:=false;
           if  (pos('CONVERT_ALL',UpperCase( SubCommand.Text))=0) and ( pos('CONSTRAINT PK_PersonalTraining',SubCommand.Text)=0) then
           ShowMessage('Œÿ« œ— «Ã—«Ì Œÿ  '+IntToStr(i)+': '#13#10+SubCommand.Text);
          end;
          Application.ProcessMessages;
          SubCommand.Lines.Clear;
          ProgressBar.Position:=ProgressBar.Position+1;
        end
      else
       SubCommand.Lines.add(Lines[i]);
     end;
ShowMessage('»« „Ê›ﬁÌ  «Ã—« ‘œ');
 if success then close;
Button1.Enabled:=True;
end;

function TForm1.NumberofCommand:integer;
var i: integer;
begin
result:=0;
   with  SqlTxtx,Lines  do
   for i:=0 to Count-1 do
      if trim(UpperCase( Lines[i]))='GO' then
          inc(result)
end;

end.
