unit uExamDetailLogList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, xpBitBtn, ExtCtrls;

type
  TfrmExamDetailLogList = class(TMBaseForm)
    ydbGrid1: TYDBGrid;
    spSelect_ApplicantExam_Log_List: TADOStoredProc;
    dSelect_ApplicantExam_Log_List: TDataSource;
    Panel1: TPanel;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExamDetailLogList: TfrmExamDetailLogList;

implementation

uses dmu;

{$R *.dfm}

procedure TfrmExamDetailLogList.FormCreate(Sender: TObject);
begin
   spSelect_ApplicantExam_Log_List.Close;
   spSelect_ApplicantExam_Log_List.Parameters.Refresh;
   spSelect_ApplicantExam_Log_List.Parameters.ParamByName('@ExamId').Value:=dm.Browse_ExamExamID.AsInteger;
   spSelect_ApplicantExam_Log_List.open;

end;

procedure TfrmExamDetailLogList.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;

procedure TfrmExamDetailLogList.Button3Click(Sender: TObject);
begin
  inherited;
   ydbGrid1.ExportToWord;
end;

procedure TfrmExamDetailLogList.Button4Click(Sender: TObject);
begin
  inherited;
   ydbGrid1.ExportToExcel;
end;

procedure TfrmExamDetailLogList.Button5Click(Sender: TObject);
begin
  inherited;
  close; 
end;

end.
