unit uGroupExam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpBitBtn, StdCtrls, Mask, DBCtrls, Grids, DBGrids, YDbgrid,
  ExtCtrls, DB,BaseUnit;

type
  TfrmGroupExam = class(TMBaseForm)
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    procedure xpBitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGroupExam: TfrmGroupExam;

implementation

uses dmu;

{$R *.dfm}

procedure TfrmGroupExam.xpBitBtn4Click(Sender: TObject);
begin
  if Dm.qGroupExam.State in [dsEdit] then
  begin
  //  Dm.qGroupExamUTID.asinteger := _UTID;
    Dm.qGroupExam.Post;
  end;
end;

procedure TfrmGroupExam.FormCreate(Sender: TObject);
begin
   dm.qGroupExam.Open;
end;

procedure TfrmGroupExam.xpBitBtn2Click(Sender: TObject);
begin
   dm.qGroupExam.Cancel;
end;

procedure TfrmGroupExam.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
     xpBitBtn4Click(self);

end;

procedure TfrmGroupExam.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #27 then
     close;
end;

end.
