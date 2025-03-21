unit uExamEqualQuestion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,baseUnit, xpBitBtn, ExtCtrls, StdCtrls, DB, ADODB, OleServer,
  ExcelXP, Grids, DBGrids, YDbgrid;

type
  TfrmExamEqualQuestion = class(TMBaseForm)
    Panel1: TPanel;
    xpBitBtn1: TxpBitBtn;
    OpenDialog1: TOpenDialog;
    qExcel: TADOQuery;
    spViewExamEqualQuestion: TADOStoredProc;
    ExamGrid: TYDBGrid;
    dViewExamEqualQuestion: TDataSource;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExamEqualQuestion: TfrmExamEqualQuestion;

implementation

uses dmu;

{$R *.dfm}

procedure TfrmExamEqualQuestion.xpBitBtn1Click(Sender: TObject);
var PathFile ,sql: String;
    qry  : TADOQuery;
    i:integer;
begin
  inherited;
   if OpenDialog1.Execute then
      begin
         PathFile :=OpenDialog1.FileName;
         qExcel.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+PathFile+';Extended Properties="Excel 12.0 Xml;HDR=YES;IMEX=1"';
         qExcel.Open;

      end;
   qExcel.First;
   qry:=TADOQuery.Create(Self);
   qry.Connection := dm.YeganehConnection;
   qry.SQL.Text := ' delete ExamEqualQuestion where examid =  '+vartostr (dm.Browse_ExamExamID.AsInteger);
   qry.ExecSQL;

   while not(qExcel.Eof) do
   begin

      sql:=       ' Insert into ExamEqualQuestion (ExamId , GroupExamId,QuestionNumber,EqualQuestionNumber)';
      for i := 1 to qExcel.Fields.Count do
      begin
         if i=1 then
            sql:=sql+' Select '+dm.Browse_ExamExamID.AsString+','+vartostr(i)+','+qExcel.Fields.Fields[0].AsString+','+qExcel.Fields.Fields[i-1].AsString
         else
            sql:=sql+' Union Select '+dm.Browse_ExamExamID.AsString+','+vartostr(i)+','+qExcel.Fields.Fields[0].AsString+','+qExcel.Fields.Fields[i-1].AsString;
      end;
      
      qry.Close;
      qry.SQL.Text :=sql;
      qry.ExecSQL;
      qExcel.Next;
      
   end;
   qExcel.Close;
   qExcel.ConnectionString:='';
   qry.Free;

   spViewExamEqualQuestion.Close;
   spViewExamEqualQuestion.Parameters.Refresh;
   spViewExamEqualQuestion.Parameters.ParamByName('@ExamID').Value :=dm.Browse_ExamExamID.Value;
   spViewExamEqualQuestion.Parameters.ParamByName('@res').Value :='';
   spViewExamEqualQuestion.open;

   if    spViewExamEqualQuestion.Parameters.ParamByName('@res').Value<>'' then
   showmessage(spViewExamEqualQuestion.Parameters.ParamByName('@res').Value);
end;

procedure TfrmExamEqualQuestion.FormCreate(Sender: TObject);
begin
  inherited;
   spViewExamEqualQuestion.Close;
   spViewExamEqualQuestion.Parameters.Refresh;
   spViewExamEqualQuestion.Parameters.ParamByName('@ExamID').Value :=dm.Browse_ExamExamID.Value;
   spViewExamEqualQuestion.Parameters.ParamByName('@res').Value :='';
   spViewExamEqualQuestion.open;
end;

end.
