unit AddLoanAmountU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, Grids, DBGrids, YDbgrid, ActnList,
   Menus, StdCtrls, Buttons, ExtCtrls, ADODB, AdvGlowButton;

type
  TFrAddLoanAmount = class(TYBaseForm)
    dLoanAmount: TDataSource;
    Panel1: TPanel;
    xpBitBtn1: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    xpBitBtn3: TAdvGlowButton;
    xpBitBtn4: TAdvGlowButton;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    pnlMain: TPanel;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddLoanAmount: TFrAddLoanAmount;

implementation

uses DMU, YShamsiDate, YInputQuery_Double;

{$R *.dfm}

procedure TFrAddLoanAmount.xpBitBtn1Click(Sender: TObject);
var
  s,s2,SqlText,_GR: string;
begin
  inherited;
  SqlText:=' SELECT ISNULL(MAX(ISNULL(LOANAMOUNGROUP,0)),0)+1  _M FROM LoanAmount';

  _GR:=Qry_GetResult(SqlText,Dm.YeganehConnection) ;
  if dm.Y_InputQuery_Double('„»·€ ÅÌ‘ ›—÷ Ê«„','ê—ÊÂ','0',_GR,s,s2) then
  begin
{   if not is_integer(s) then
     begin
       ShowMessage('„ﬁœ«— ‰« „ ‰«”» »—«Ì „»·€ Ê«„');
       exit;
     end;
     }
    if (StrToInt64(s)<100000) or (StrToInt64(s)>1000000000000000) then
    begin
      ShowMessage('„ﬁœ«— ‰« „ ‰«”» »—«Ì „»·€ Ê«„');
      exit;
    end;
    dm.LoanAmount.Insert;
    dm.LoanAmountLoanAmount.Value:=StrToInt64(s);
    dm.LoanAmountLoanAmounGroup.Value:=StrToInt(_gr);
    dm.LoanAmount.Post;
  end;
end;

procedure TFrAddLoanAmount.xpBitBtn2Click(Sender: TObject);
var
  s,s2: string;
begin
  inherited;
{if dm.Y_InputQuery_Double('„»·€ ÅÌ‘ ›—÷ Ê«„',dm.LoanAmountLoanAmount.AsString,s) then
 begin
   if not is_integer(s) then
     begin
       ShowMessage('„ﬁœ«— ‰« „ ‰«”» »—«Ì „»·€ Ê«„');
       exit;
     end;
   if (StrToInt(s)<100000) or (StrToInt(s)>1000000000) then
     begin
       ShowMessage('„ﬁœ«— ‰« „ ‰«”» »—«Ì „»·€ Ê«„');
       exit;
     end;}
  if dm.Y_InputQuery_Double('„»·€ ÅÌ‘ ›—÷ Ê«„','ê—ÊÂ','0','1',s,s2) then
  begin
    if not is_integer(s) then
    begin
      ShowMessage('„ﬁœ«— ‰« „ ‰«”» »—«Ì „»·€ Ê«„');
      exit;
    end;

    {
    if (StrToInt64(s)<100000) or (StrToInt64(s)>1000000000) then
    begin
      ShowMessage('„ﬁœ«— ‰« „ ‰«”» »—«Ì „»·€ Ê«„');
      exit;
    end;
    }
    
    dm.LoanAmount.Edit;
    dm.LoanAmountLoanAmount.Value:=StrToInt64(s);
    dm.LoanAmountLoanAmounGroup.Value:=StrToInt(s2);
    dm.LoanAmount.Post;
  end;

end;

procedure TFrAddLoanAmount.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
    dm.LoanAmount.Delete;
end;

procedure TFrAddLoanAmount.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddLoanAmount.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  dm._dEfultGroup:= dm.LoanAmountLoanAmounGroup.AsInteger;
end;

end.
