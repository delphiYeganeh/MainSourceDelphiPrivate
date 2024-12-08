unit UPagePreview;

interface

uses
  FileCtrl,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, ExtActns, ActnList, DB,xpWindow,
  Menus;

type
  TFrPagePreview = class(TMBaseForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    StartPage: TEdit;
    EndPage: TEdit;
    PathPanel: TPanel;
    Path: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StartPageChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done: Boolean;
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
if SelectDirectory(_Yeganeh,'c:',s) then
 begin
   if s[length(s)]<>'\' then s:=s+'\';
   path.Text:=s;
 end;  
end;

end.
