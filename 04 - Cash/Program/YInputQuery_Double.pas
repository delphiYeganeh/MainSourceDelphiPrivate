unit YInputQuery_Double;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TYInputQuery_DoublF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    output: TEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    output2: TEdit;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure outputEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done: boolean;
  end;

var
  YInputQuery_DoublF: TYInputQuery_DoublF;

implementation

uses BaseUnit;



{$R *.dfm}

procedure TYInputQuery_DoublF.BitBtn2Click(Sender: TObject);
begin
 done:=false;
 close;
end;

procedure TYInputQuery_DoublF.BitBtn1Click(Sender: TObject);
begin
   if Trim(output2.Text)='' then
   begin
      YBaseForm.MessageShowString(' ·ÿ›« ›Ì·œ '+ Label2.Caption +' —« „ﬁœ«— œÂÌ ‰„«ÌÌœ ', False);
      Abort;
   end;
   if Trim(output.Text)='' then
   begin
      YBaseForm.MessageShowString(' ·ÿ›« ›Ì·œ '+ Label1.Caption +' —« „ﬁœ«— œÂÌ ‰„«ÌÌœ ', False);
      Abort;
   end;
   done:=true;
   close;
end;

procedure TYInputQuery_DoublF.outputEnter(Sender: TObject);
begin
   output.SelectAll;
   output2.SelectAll;
end;

end.
