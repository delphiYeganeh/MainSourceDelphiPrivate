unit UApplicantUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, xpWindow, ActnList,
  ComCtrls, StdCtrls, DB, ADODB, xpBitBtn;

type
  TFUpdateApplicant = class(TMBaseForm)
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    Report_Applicant: TADOStoredProc;
    Update_Applicant_ByApplicantNo: TADOStoredProc;
    DReport_Applicant: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    Button5: TxpBitBtn;
    MajorStart: TEdit;
    MajorLength: TEdit;
    TermStart: TEdit;
    TermLength: TEdit;
    ProgressBar1: TProgressBar;
    Panel3: TPanel;
    xpBitBtn1: TxpBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUpdateApplicant: TFUpdateApplicant;

implementation

uses dmu, UApplicantFilter;

{$R *.dfm}

procedure TFUpdateApplicant.FormShow(Sender: TObject);
begin
  inherited;
FApplicantFilter:=TFApplicantFilter.Create(Application);
FApplicantFilter.ShowInPanel(Panel1);
end;

procedure TFUpdateApplicant.Button2Click(Sender: TObject);
begin
  inherited;
with Update_Applicant_ByApplicantNo do
 begin
   Parameters.ParamByName('@where').Value:=FApplicantFilter.Where;
   Parameters.ParamByName(' @TermCode_Start').Value:=StrToInt(TermStart.Text);
   Parameters.ParamByName('@TermCode_Len').Value:=StrToInt(TermLength.Text);
   Parameters.ParamByName('@MajorCode_Start').Value:=StrToInt(MajorStart.Text);
   Parameters.ParamByName('@MajorCode_Len').Value:=StrToInt(MajorLength.Text);
    ExecProc;
 end;
end;

procedure TFUpdateApplicant.Button3Click(Sender: TObject);
begin
  inherited;
YDBGrid1.ExportToWord;
end;

procedure TFUpdateApplicant.Button5Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFUpdateApplicant.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
Report_Applicant.Open;
end;

end.
