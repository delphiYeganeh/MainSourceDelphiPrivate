unit UBaseRefere;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, Grids, DBGrids,
  YDbgrid, StdCtrls, Buttons;

type
  TFBaseRefere = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    btndCaseType: TBitBtn;
    Button1: TButton;
    dbgCaseType: TYDBGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btndCaseTypeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBaseRefere: TFBaseRefere;

implementation

uses dmu,YShamsiDate;

{$R *.dfm}

procedure TFBaseRefere.FormCreate(Sender: TObject);
begin
  inherited;
   with dm do
   begin
     tblCaseType.Close;
     tblCaseType.Open;
     tblTaskStatus.Close;
     tblTaskStatus.Open;
     tblTaskReferral.Close;
     tblTaskReferral.Open;
     tblUserType.Close;
     tblUserType.Open;
   end;
end;

procedure TFBaseRefere.btndCaseTypeClick(Sender: TObject);
begin
  inherited;
   Dm.tblTaskReferral.Append;
end;

procedure TFBaseRefere.Button1Click(Sender: TObject);
begin
  inherited;
   if ShowMyMessage('�����','��� ���� �� ��� ����� ���� ����Ͽ',mbOKCancel,mtWarning) = mrOK then
      Dm.tblTaskReferral.Delete;
end;

procedure TFBaseRefere.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  if (NewWidth < 695)  or (NewHeight < 461) then
    Resize := False
  else Resize := True;
  inherited;

end;

end.
