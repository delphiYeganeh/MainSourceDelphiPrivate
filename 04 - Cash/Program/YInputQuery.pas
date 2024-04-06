unit YInputQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TYInputQueryF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    output: TEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
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
  YInputQueryF: TYInputQueryF;

implementation

uses BaseUnit;



{$R *.dfm}

procedure TYInputQueryF.BitBtn2Click(Sender: TObject);
begin
 done:=false;
 close;
end;

procedure TYInputQueryF.BitBtn1Click(Sender: TObject);
begin
   if Trim(output.Text)='' then
   begin
      YBaseForm.MessageShowString(' ·ÿ›« ›Ì·œ '+ Label1.Caption +' —« „ﬁœ«— œÂÌ ‰„«ÌÌœ ', False);
      Abort;
   end;
   done:=true;
   close;
end;

procedure TYInputQueryF.outputEnter(Sender: TObject);
begin
   //Rnjbar
   output.SelectAll;
   //---
end;

end.
