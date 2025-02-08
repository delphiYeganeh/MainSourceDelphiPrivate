 unit LoanPriorityU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, StdCtrls, Grids, DBGrids, YDbgrid, ActnList,
  DBCtrls, ExtCtrls, Buttons, Menus, AdvGlowButton;

type
  TFrLoanPriority = class(TYBaseForm)
    Panel1: TPanel;
    Loanpriority: TComboBox;
    Label1: TLabel;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Panel3: TPanel;
    xpBitBtn1: TAdvGlowButton;
    Button1: TAdvGlowButton;
    pnlMain: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoanpriorityClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLoanPriority: TFrLoanPriority;

implementation

uses DMU, Math, BusinessLayer, MainU, YShamsiDate;

{$R *.dfm}

procedure TFrLoanPriority.Button1Click(Sender: TObject);
begin
  inherited;
  _FoundPriorityAccountID:=-1;
  Close;
end;

procedure TFrLoanPriority.FormCreate(Sender: TObject);
begin
  inherited;
  //HNaseri
  //Open_Report_LoanPointByNaseri(_Today);
  Open_LoanPriority_BYIsUrgency(Loanpriority.ItemIndex=1);
end;

procedure TFrLoanPriority.LoanpriorityClick(Sender: TObject);
begin
  inherited;
  Open_LoanPriority_BYIsUrgency(Loanpriority.ItemIndex=1);
end;

procedure TFrLoanPriority.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.LoanType.Filtered:=false;
  {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

procedure TFrLoanPriority.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FrMain.FindContact(false,1,false);
  if _FoundAccountID>0 then
  begin
    Insert_LoanPriority(_FoundAccountID,Loanpriority.ItemIndex=1);
    Open_LoanPriority_BYIsUrgency(Loanpriority.ItemIndex=1);
  end;
end;

procedure TFrLoanPriority.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› «Ì‰ Õ”«» «“ ‰Ê»  Ê«„ „ÿ„∆‰ Â” Ìœ',true) then
    Delete_LoanPriority(dm.Select_LoanPriority_BYIsUrgencyLoanPriorityID.AsInteger);
  Open_LoanPriority_BYIsUrgency(Loanpriority.ItemIndex=1);
end;

procedure TFrLoanPriority.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  _FoundPriorityAccountID:=Dm.Select_LoanPriority_BYIsUrgencyAccountID.AsInteger;
  _FoundPriorityUrgency:=Loanpriority.ItemIndex=1;
  Close;
end;

procedure TFrLoanPriority.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  _FoundPriorityAccountID:=Dm.Select_LoanPriority_BYIsUrgencyAccountID.AsInteger;
  Close;
end;

procedure TFrLoanPriority.SpeedButton1Click(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  i := dm.Select_LoanPriority_BYIsUrgencyLoanPriorityID.AsInteger;
  Move_LoanPriority(dm.Select_LoanPriority_BYIsUrgencyLoanPriorityID.AsInteger,true);
  Open_LoanPriority_BYIsUrgency(Loanpriority.ItemIndex=1);
  dm.Select_LoanPriority_BYIsUrgency.Locate('LoanPriorityID',i,[])
end;

procedure TFrLoanPriority.SpeedButton2Click(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  i := dm.Select_LoanPriority_BYIsUrgencyLoanPriorityID.AsInteger;
  Move_LoanPriority(dm.Select_LoanPriority_BYIsUrgencyLoanPriorityID.AsInteger,false);
  Open_LoanPriority_BYIsUrgency(Loanpriority.ItemIndex=1);
  dm.Select_LoanPriority_BYIsUrgency.Locate('LoanPriorityID',i,[])
end;

procedure TFrLoanPriority.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

end.
