 unit Report_loanPointU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
  StdCtrls, ActnList, Menus, Buttons, AdvGlowButton;

type
  TFrReport_loanPoint = class(TYBaseForm)
    Panel1: TPanel;
    MakeRep: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Panel2: TPanel;
    Memo1: TMemo;
    Panel3: TPanel;
    YDBGrid: TYDBGrid;
    Label1: TLabel;
    EdtAccountNo: TEdit;
    Update_Rep_LOANPOINT: TADOStoredProc;
    Rep_Loan_Point: TADOQuery;
    pnlMain: TPanel;
    procedure MakeRepClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReport_loanPoint: TFrReport_loanPoint;

implementation

uses DMU, AccountFilterU, BusinessLayer,YShamsiDate;

{$R *.dfm}


procedure TFrReport_loanPoint.MakeRepClick(Sender: TObject);
var
   i: integer;
begin
  inherited;
{  if trim(EdtAccountNo.Text)='' then
    Open_Report_LoanPoint(_Today,'0','0')
  else
    Open_Report_LoanPoint(_Today,trim(EdtAccountNo.Text),'0') ;
  YDBGrid.UpdateFooter;  }  // Mohamed   920225

   Screen.Cursor := crSQLWait;
   YDBGrid.DataSource.DataSet := dm.Rep_LoanPoint;
   if trim(EdtAccountNo.Text)='' then
   begin
      with Dm.Rep_LoanPoint,parameters do
      begin
       Close;
       ParamByName('@today').value:=_Today;
       ParamByName('@AccountNO').value:='0';
       ParamByName('@AccountTitle').value:='0';
       Open;
      end;
   end
   else
   begin
      with Dm.Rep_LoanPoint,parameters do
      begin
       Close;
       ParamByName('@today').value:=_Today;
       ParamByName('@AccountNO').value:=trim(EdtAccountNo.Text);
       ParamByName('@AccountTitle').value:='0';
       Open;
      end;
   end;
   YDBGrid.UpdateFooter;
   Screen.Cursor := crHourGlass;
   dm.Rep_LoanPoint.First;
   while not dm.Rep_LoanPoint.Eof do
   begin
      Update_Rep_LOANPOINT.Close;
      Update_Rep_LOANPOINT.Parameters.ParamByName('@AccountID').Value := dm.Rep_LoanPointAccountID.Value;
      Update_Rep_LOANPOINT.Parameters.ParamByName('@today').value:=_Today;
      if trim(EdtAccountNo.Text)='' then
         Update_Rep_LOANPOINT.Parameters.ParamByName('@AccountNO').value:='0'
      else
         Update_Rep_LOANPOINT.Parameters.ParamByName('@AccountNO').value:=trim(EdtAccountNo.Text);
      Update_Rep_LOANPOINT.Parameters.ParamByName('@AccountTitle').value:='0';
      Update_Rep_LOANPOINT.Open;
      dm.Rep_LoanPoint.Next;
      sleep(10);
   end;
//   YDBGrid.DataSource.DataSet := dm.Sel_Rep_LoanPoint;
//   dm.Sel_Rep_LoanPoint.close;
//   dm.Sel_Rep_LoanPoint.Open;

{
   YDBGrid.DataSource.DataSet := Rep_Loan_Point;
   Rep_Loan_Point.Close;


   i := 0;
   try
     if trim(EdtAccountNo.Text) <> '' then
      i := StrToInt(trim(EdtAccountNo.Text));
   except
   end;

   Rep_Loan_Point.Parameters[2].Value := i;

   Rep_Loan_Point.Parameters[3].Value := 0;


   if trim(EdtAccountNo.Text)='' then
      Rep_Loan_Point.Parameters[3].Value := 1
   else
      Rep_Loan_Point.Parameters[3].Value := 0;

   Rep_Loan_Point.Open;
            }
   dm.Rep_LoanPoint.close;
   dm.Rep_LoanPoint.Open;

   YDBGrid.UpdateFooter;
   Screen.Cursor := crDefault;
  //        Mohamed       920225
end;

procedure TFrReport_loanPoint.Button6Click(Sender: TObject);
begin
  inherited;
YDBGrid.CustomizePrint;
end;

procedure TFrReport_loanPoint.Button3Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToWord;
end;

procedure TFrReport_loanPoint.Button4Click(Sender: TObject);
begin
  inherited;
YDBGrid.ExportToExcel;
end;

procedure TFrReport_loanPoint.Button2Click(Sender: TObject);
begin
  inherited;
YDBGrid.Print;
end;

procedure TFrReport_loanPoint.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrReport_loanPoint.FormShow(Sender: TObject);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid);

end;

procedure TFrReport_loanPoint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid);

end;

end.
