unit YInputQuery_Double;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, AdvGlowButton;

type
  TYInputQuery_DoublF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    output: TEdit;
    Label1: TLabel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    output2: TEdit;
    Label2: TLabel;
    pnlMain: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure outputEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done: boolean;
  end;

var
  YInputQuery_DoublF: TYInputQuery_DoublF;

implementation

uses BaseUnit,Dmu;


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
    YBaseForm.MessageShowString(' ���� ���� '+ Label2.Caption +' �� ����� ��� ������ ', False);
    Abort;
  end;
  if Trim(output.Text)='' then
  begin
    YBaseForm.MessageShowString(' ���� ���� '+ Label1.Caption +' �� ����� ��� ������ ', False);
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

procedure TYInputQuery_DoublF.FormShow(Sender: TObject);
begin
  Self.Color  := _Maincolor1 ;
end;

end.
