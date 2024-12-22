unit UReferralUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, Grids, DBGrids,
  YDbgrid, StdCtrls, Buttons;

type
  TFReferralUser = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    btndCaseType: TBitBtn;
    Button1: TButton;
    dbgCaseType: TYDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure btndCaseTypeClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReferralUser: TFReferralUser;

implementation

uses dmu,YShamsiDate;

{$R *.dfm}

procedure TFReferralUser.Button1Click(Sender: TObject);
begin
  inherited;
   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–› —ﬂÊ—œ Ã«—Ì Â” Ìœø',mbOKCancel,mtWarning) = mrOK then
      Dm.tblReferralUser.Delete;
end;

procedure TFReferralUser.btndCaseTypeClick(Sender: TObject);
begin
  inherited;
   Dm.tblReferralUser.Append;
end;

procedure TFReferralUser.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  if (NewWidth < 428)  or (NewHeight < 383) then
    Resize := False
  else Resize := True;
end;

procedure TFReferralUser.FormCreate(Sender: TObject);
begin
  inherited;
   with dm do
   begin
     tblReferralUser.Close;
     tblReferralUser.Open;
   end;
end;

end.
