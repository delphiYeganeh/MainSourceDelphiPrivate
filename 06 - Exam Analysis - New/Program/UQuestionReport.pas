unit UQuestionReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, ADODB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, Buttons, YWhereEdit, CheckLst, YchecklistBox,
  ComCtrls, Yeganeh_Word, QuickRpt, QRCtrls, DBCtrls, UemsVCL, Mask,
  xpWindow, xpBitBtn;

type
  TFQuestionReport = class(TMBaseForm)
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQuestionReport: TFQuestionReport;

implementation

uses dmu, BusinessLayer,  ULetterTemplate, UEditQuestion;

{$R *.dfm}

procedure TFQuestionReport.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;


end.
