unit ArchiveDialog;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, ActnList,Dialogs, Menus, ExtCtrls;

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
    Done:Boolean;
    { Public declarations }
  end;

var
  ArchiveDialogForm: TArchiveDialogForm;

implementation

uses Dmu, Forms;

{$R *.dfm}

procedure TArchiveDialogForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  done:=true;
  Close;
end;

procedure TArchiveDialogForm.BitBtn2Click(Sender: TObject);
begin
  inherited;
done:=false;
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
Title.SetFocus;
end;

end.
