unit DetailExamU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, StdCtrls, xpWindow, ActnList;

type
  TfrDetailExam = class(TMBaseForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done:boolean;
  end;

var
  frDetailExam: TfrDetailExam;

implementation

{$R *.dfm}

procedure TfrDetailExam.BitBtn1Click(Sender: TObject);
begin
  inherited;
done:=false;
close;
end;

procedure TfrDetailExam.Button1Click(Sender: TObject);
begin
  inherited;
done:=true;
close;

end;

end.
