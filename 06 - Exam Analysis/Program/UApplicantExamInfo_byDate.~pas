unit UApplicantExamInfo_byDate;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, xpWindow, Mask, ExtCtrls, ADODB, xpBitBtn, BaseUnit;


type
  TFrApplicantExamInfo_byDate = class(TMBaseForm)
    Get_ApplicantExamInfo_ByDate: TADOStoredProc;
    Get_ApplicantExamInfo_ByDateApplicantID: TAutoIncField;
    Get_ApplicantExamInfo_ByDateApplicantCode: TStringField;
    Get_ApplicantExamInfo_ByDateFirstName: TWideStringField;
    Get_ApplicantExamInfo_ByDateLastName: TWideStringField;
    Get_ApplicantExamInfo_ByDateFullName: TWideStringField;
    Get_ApplicantExamInfo_ByDateMajorID: TSmallintField;
    Get_ApplicantExamInfo_ByDateTermcode: TStringField;
    Get_ApplicantExamInfo_ByDateCourseTitle: TWideStringField;
    Get_ApplicantExamInfo_ByDateCourseCode: TStringField;
    Get_ApplicantExamInfo_ByDateExamDate: TStringField;
    Get_ApplicantExamInfo_ByDateExamTermCode: TStringField;
    Get_ApplicantExamInfo_ByDateFinalMark: TFloatField;
    Get_ApplicantExamInfo_ByDateGroupingTitle: TWideStringField;
    Get_ApplicantExamInfo_ByDateord: TIntegerField;
    Get_ApplicantExamInfo_ByDateAccepted: TBooleanField;
    Get_ApplicantExamInfo_ByDateNumber_of_Question: TIntegerField;
    Get_ApplicantExamInfo_ByDateNumber_of_Items: TWordField;
    Get_ApplicantExamInfo_ByDatenumber_of_applicant: TIntegerField;
    Get_ApplicantExamInfo_ByDateDifficulty: TFloatField;
    Get_ApplicantExamInfo_ByDateDiscrimination: TFloatField;
    Get_ApplicantExamInfo_ByDateRPBIS: TFloatField;
    Get_ApplicantExamInfo_ByDateCorrect_answer: TIntegerField;
    Get_ApplicantExamInfo_ByDateWrong_answer: TIntegerField;
    Get_ApplicantExamInfo_ByDateWithot_answer: TIntegerField;
    Get_ApplicantExamInfo_ByDateitem1: TIntegerField;
    Get_ApplicantExamInfo_ByDateitem2: TIntegerField;
    Get_ApplicantExamInfo_ByDateitem3: TIntegerField;
    Get_ApplicantExamInfo_ByDateitem4: TIntegerField;
    Get_ApplicantExamInfo_ByDateMajorTitle: TStringField;
    DGet_ApplicantExamInfo_ByDate: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    EndExamDate: TEdit;
    Label3: TLabel;
    BeginExamDate: TEdit;
    Label6: TLabel;
    Get_ApplicantExamInfo_ByDateExamTitle: TWideStringField;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Button6: TxpBitBtn;
    xpBitBtn1: TxpBitBtn;
    number: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RefreshQuery;
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
   private
    FgApplicantID: Integer;
    procedure SetgApplicantID(const Value: Integer);
    { Private declarations }
   public
    { Private declarations }
    property gApplicantID:Integer read FgApplicantID write SetgApplicantID;
  end;

var
  FrApplicantExamInfo_byDate: TFrApplicantExamInfo_byDate;

implementation

uses dmu, Math;


{$R *.dfm}
//var gApplicantID :Integer;

procedure TFrApplicantExamInfo_byDate.Button6Click(Sender: TObject);
begin
YDBGrid1.CustomizePrint;
end;

procedure TFrApplicantExamInfo_byDate.Button3Click(Sender: TObject);
begin

YDBGrid1.ExportToWord;

end;

procedure TFrApplicantExamInfo_byDate.Button4Click(Sender: TObject);
begin
YDBGrid1.ExportToExcel;

end;

procedure TFrApplicantExamInfo_byDate.Button5Click(Sender: TObject);
begin
close;
end;

procedure TFrApplicantExamInfo_byDate.RefreshQuery;
begin
  inherited;
 with Get_ApplicantExamInfo_ByDate do
  begin
    Close;
    Parameters.ParamByName('@ApplicantID').Value:= gApplicantID ;
    Parameters.ParamByName('@BeginExamDate').Value:=BeginExamDate.Text;
    Parameters.ParamByName('@EndExamDate').Value:=EndExamDate.Text;
    Open;
     Number.Caption:=' ⁄œ«œ:'+IntToStr(RecordCount);
     YDBGrid1.PrintTitle:=' ·Ì”  ¬“„Ê‰ Â«ÌÌ òÂ œ«‰‘ÃÊÌ '+Get_ApplicantExamInfo_ByDateFullName.AsString+' »Â ‘„«—Â œ«‰‘ÃÊÌÌ'+Get_ApplicantExamInfo_ByDateApplicantCode.AsString+' œ— ¬‰ ‘—ò  ò—œÂ «” ';
  end;
end;

procedure TFrApplicantExamInfo_byDate.FormShow(Sender: TObject);
begin
  inherited;
  RefreshQuery;
end;

procedure TFrApplicantExamInfo_byDate.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  RefreshQuery;
end;

procedure TFrApplicantExamInfo_byDate.SetgApplicantID(
  const Value: Integer);
begin
  FgApplicantID := Value;
end;

end.
