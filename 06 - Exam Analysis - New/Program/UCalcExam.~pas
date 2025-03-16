unit UCalcExam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, DBCtrls, UemsVCL, ExtCtrls,
  StdCtrls, Mask, ComCtrls, Buttons, ADODB, xpWindow, xpBitBtn;

type
  TFrCalcExam = class(TMBaseForm)
    Button2: TxpBitBtn;
    ProgressBar: TProgressBar;
    BitBtn2: TxpBitBtn;
    lblAlarm: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    ExamId :Integer;
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent;ExmID : Integer = 0);reintroduce;virtual;
  end;

var
  FrCalcExam: TFrCalcExam;
var f: TextFile;
implementation

uses dmu, BusinessLayer;

{$R *.dfm}


procedure TFrCalcExam.BitBtn2Click(Sender: TObject);
begin
  inherited;
  lblAlarm.Visible := True;
  lblAlarm.Repaint;

  ProgressBar.Position:=10;
    Exec_Update_ExamAndQuestion_ByExamID(ExamID);

  ProgressBar.Position:=20;
    Exec_insert_ApplicantAnswer_ByExamID(ExamID);

  ProgressBar.Position:=40;
    Exec_update_ApplicantExam_FinalMArk(ExamID);

  ProgressBar.Position:=60;
    Exec_Analysis_Question_byExamID(ExamID) ;

  ProgressBar.Position:=80;
    Exec_Analysis_Exam_Total(ExamID) ;

  ProgressBar.Position:=100;
  lblAlarm.Visible := False;
  ShowMessage('»« „Ê›ﬁÌ    Å«”Œ‰«„Â Â«   ’ÕÌÕ ‘œ');
  close;
  ProgressBar.Position:=0;
end;

procedure TFrCalcExam.Button2Click(Sender: TObject);
begin
  inherited;
  close
end;

constructor TFrCalcExam.create(AOwner: TComponent; ExmID: Integer);
begin
  inherited create(AOwner);
  ExamId := ExmID;
end;

end.



