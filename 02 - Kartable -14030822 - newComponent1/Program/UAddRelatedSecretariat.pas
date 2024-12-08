unit UAddRelatedSecretariat;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, Windows,ActnList, XPStyleActnCtrls,  xpBitBtn, Menus;

type
  TFrAddRelatedSecretariat = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Place: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
   done:boolean;
    { Public declarations }
  end;

var
  FrAddRelatedSecretariat: TFrAddRelatedSecretariat;

implementation

uses Dmu, businessLayer, FromOrgU;

{$R *.dfm}

procedure TFrAddRelatedSecretariat.BitBtn1Click(Sender: TObject);
begin
  inherited;
 dm.RelatedSecretariatsDestinationOrgID_inSource.AsInteger:=dm.NewToOrganization(dm.RelatedSecretariatsRelatedSecretariatTitle.AsString,'');
 dm.RelatedSecretariats.Post;
 close;
end;

procedure TFrAddRelatedSecretariat.BitBtn2Click(Sender: TObject);
begin
  inherited;
dm.RelatedSecretariats.Cancel;
close;
end;

procedure TFrAddRelatedSecretariat.FormShow(Sender: TObject);
begin
  inherited;
Title.SetFocus;
end;

procedure TFrAddRelatedSecretariat.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   FromOrgForm:=TFromOrgForm.Create(self);
   FromOrgForm.PageControl.Pages[0].TabVisible:=false;
   FromOrgForm.outerOrg.Checked:=true;
   FromOrgForm.innerOrg.Checked:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
       Dm.RelatedSecretariatsDestinationOrgID_inSource.Value:=_ResultOrgID;
end;

end.
