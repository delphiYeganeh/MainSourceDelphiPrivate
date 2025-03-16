unit TahlilU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ActnList, Grids, DBGrids, YDbgrid, DB,
  DBClient, ADODB, Provider, xpBitBtn;

type
  TFTahlil = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    ds1: TDataSource;
    Select_Applicant_by_Examid_Tahlil: TADOStoredProc;
    Select_Applicant_by_Examid_TahlilAcceptCount: TIntegerField;
    Select_Applicant_by_Examid_TahlilRejectCount: TIntegerField;
    Select_Applicant_by_Examid_TahlilAcceptPercent: TBCDField;
    Select_Applicant_by_Examid_TahlilRejectPercent: TBCDField;
    Button4: TxpBitBtn;
    Button3: TxpBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    FExamID: Integer;
    procedure SetExamID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    Property ExamID:Integer read FExamID write SetExamID;
  end;

var
  FTahlil: TFTahlil;

implementation

uses UApplicantExamInfo, dmu;

{$R *.dfm}

{ TFTahlil }

procedure TFTahlil.SetExamID(const Value: Integer);
begin
  FExamID := Value;
end;

procedure TFTahlil.FormShow(Sender: TObject);
begin
  inherited;
  Select_Applicant_by_Examid_Tahlil.Close;
  Select_Applicant_by_Examid_Tahlil.Parameters.ParamByName('@ExamID').Value:=ExamID;
  Select_Applicant_by_Examid_Tahlil.Open;
end;

procedure TFTahlil.Button4Click(Sender: TObject);
begin
  inherited;
        YDBGrid1.ExportToExcel;
end;

procedure TFTahlil.Button3Click(Sender: TObject);
begin
  inherited;
        YDBGrid1.ExportToWord;
end;

end.
