unit ArchiveDialog;

interface

uses
  DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, ActnList, XPStyleActnCtrls, xpBitBtn, xpWindow,
  ExtCtrls, Forms;

type
  TArchiveDialogForm = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TEdit;
    Label1: TLabel;
    Place: TEdit;
    Label9: TLabel;
    notes: TEdit;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   done:boolean;
    { Public declarations }
  end;

var
  ArchiveDialogForm: TArchiveDialogForm;

implementation

uses Dmu, SysUtils;

{$R *.dfm}

procedure TArchiveDialogForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Trim(Title.Text) <> '' then
  begin
    done := True;
    close;
  end
  else
  begin
     ShowMsgString('⁄‰Ê«‰ “Ê‰ò‰ —« Ê«—œ ‰„«ÌÌœ');
  end;
end;

procedure TArchiveDialogForm.BitBtn2Click(Sender: TObject);
begin
  inherited;
  done := False;
  close;
end;

procedure TArchiveDialogForm.DBEdit6Enter(Sender: TObject);
begin
  inherited;
  TEditEnter(sender);
end;

procedure TArchiveDialogForm.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
end;

procedure TArchiveDialogForm.FormShow(Sender: TObject);
begin
  inherited;
  done := False;
  Title.SetFocus;
end;

end.
