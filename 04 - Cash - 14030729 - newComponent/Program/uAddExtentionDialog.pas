unit uAddExtentionDialog;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, Windows,ActnList, XPStyleActnCtrls, xpWindow, xpBitBtn,
  ExtCtrls;

type
  TFrAddExtentionDialog = class(TMBaseForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Title: TDBEdit;
    Place: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PlaceEnter(Sender: TObject);
    procedure PlaceExit(Sender: TObject);
  private
    { Private declarations }
  public
   done:boolean;
    { Public declarations }
  end;

var
  FrAddExtentionDialog: TFrAddExtentionDialog;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrAddExtentionDialog.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dm.Extention.Post;
  Exec_insert_Extention(dm.ExtentionExtentionID.AsInteger);
  Close;
end;

procedure TFrAddExtentionDialog.BitBtn2Click(Sender: TObject);
begin
  inherited;
dm.Extention.Cancel;
close;
end;

procedure TFrAddExtentionDialog.FormShow(Sender: TObject);
begin
  inherited;
Title.SetFocus;
end;

procedure TFrAddExtentionDialog.PlaceEnter(Sender: TObject);
begin
  inherited;
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);

end;

procedure TFrAddExtentionDialog.PlaceExit(Sender: TObject);
begin
  inherited;
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);

end;

end.
