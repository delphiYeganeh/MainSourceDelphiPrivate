unit SelectReportUI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmSelectReport = class(TForm)
    rgReportType: TRadioGroup;
    btnOk: TButton;
    btnCancle: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    function ShowCustomReport(out Aflag: Smallint): Boolean;
  end;

var
  fmSelectReport: TfmSelectReport;

implementation

{$R *.dfm}

{ TForm1 }

function TfmSelectReport.ShowCustomReport(out Aflag: Smallint): Boolean;
begin
  Result := ShowModal = mrOk;

//  Result := Result and (rgReportType.ItemIndex = 0);
  if Result then
    Aflag :=  rgReportType.ItemIndex;
end;

procedure TfmSelectReport.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmSelectReport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    ModalResult := mrCancel;
end;

end.
