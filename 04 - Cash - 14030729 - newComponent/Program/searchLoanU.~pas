unit SearchLoanU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Grids, DBGrids, YDbgrid, ExtCtrls,
  ActnList, Menus, Buttons, DB, ADODB, AdvGlowButton;

type
  TFrSearchLoan = class(TYBaseForm)
    Panel1: TPanel;
    YDBGrid3: TYDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    xpBitBtn1: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    Found: TAction;
    pnlMain: TPanel;
    procedure FoundExecute(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure YDBGrid3DblClick(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSearchLoan: TFrSearchLoan;

implementation

uses dmu, BusinessLayer
, YShamsiDate;

{$R *.dfm}

procedure TFrSearchLoan.FoundExecute(Sender: TObject);
begin
  inherited;
  _FoundLoanID:=-1;
with dm,Select_Loan_Like do
 if Active then
  if RecordCount>0 then
    begin
      _FoundLoanID:=Select_Loan_LikeLoanID.AsInteger;
      _FoundLoanNo:=Select_Loan_LikeLoanNO.AsString;
    end;
 Close;

end;

procedure TFrSearchLoan.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
Found.Execute;
end;

procedure TFrSearchLoan.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
_FoundLoanID:=-1;
close;
end;

procedure TFrSearchLoan.YDBGrid3DblClick(Sender: TObject);
begin
  inherited;
 Found.Execute;
end;

procedure TFrSearchLoan.SearchEditChange(Sender: TObject);
begin
  inherited;
  Open_Loan_Like(SearchEdit.Text);
end;

procedure TFrSearchLoan.FormShow(Sender: TObject);
begin
   inherited;
   DBGrid_LoadColumns(Self.Name,YDBGrid3);
end;

procedure TFrSearchLoan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   DBGrid_SaveColumns(Self.Name,YDBGrid3);
end;

end.
