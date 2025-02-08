 unit LoanPointU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Spin, ActnList, Mask, Buttons,
  Menus, ExtCtrls, DB, ADODB, AdvGlowButton;

type
  TFrLoanPoint = class(TYBaseForm)
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel2: TPanel;
    Label25: TLabel;
    Label27: TLabel;
    Label1: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    LastLoanPoint: TEdit;
    MonthlyDelayPoint: TEdit;
    PartDelayPoint: TEdit;
    LoanRequestPoint: TEdit;
    BalancePoint: TEdit;
    lbl1: TLabel;
    GroupPoint: TEdit;
    pnlMain: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLoanPoint: TFrLoanPoint;

implementation

uses DMU, YShamsiDate, BusinessLayer;

{$R *.dfm}

procedure TFrLoanPoint.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrLoanPoint.FormCreate(Sender: TObject);
var i: integer;
begin
  inherited;
for i:=0 to ComponentCount-1 do
   if Components[i].ClassNameIs('Tedit') then
     try TEdit(Components[i]).Text:=Get_SystemSetting(Components[i].Name) except end
end;

procedure TFrLoanPoint.BitBtn1Click(Sender: TObject);
var i: integer;
begin
  inherited;
for i:=0 to ComponentCount-1 do
   if Components[i].ClassNameIs('Tedit') then
      Set_SystemSetting(Components[i].name,trim(TEdit(Components[i]).text));
 close;

end;


end.
