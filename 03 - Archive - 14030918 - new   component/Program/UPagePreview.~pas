unit UPagePreview;

interface

uses
  FileCtrl,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, ExtActns, ActnList, DB,
  xpWindow, xpBitBtn;

type
  TFrPagePreview = class(TMBaseForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    StartPage: TEdit;
    Label3: TLabel;
    EndPage: TEdit;
    PathPanel: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Path: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StartPageChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done: boolean;
  end;

var
  FrPagePreview: TFrPagePreview;

implementation

uses Dmu;

{$R *.dfm}

procedure TFrPagePreview.BitBtn1Click(Sender: TObject);
begin
  inherited;
done:=true;
close;
end;

procedure TFrPagePreview.BitBtn2Click(Sender: TObject);
begin
  inherited;
done:=false;
close;
end;

procedure TFrPagePreview.FormShow(Sender: TObject);
begin
  inherited;
  StartPage.SetFocus;
end;

procedure TFrPagePreview.StartPageChange(Sender: TObject);
begin
  inherited;
EndPage.Text:=StartPage.Text;
end;

procedure TFrPagePreview.SpeedButton1Click(Sender: TObject);
var s: string;
begin
  inherited;
if SelectDirectory(_yeganeh,'c:',s) then
 if s[length(s)]<>'\' then
  s:=s+'\';
 path.Text:=s;

end;

end.
