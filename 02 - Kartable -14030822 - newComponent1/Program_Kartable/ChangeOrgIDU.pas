unit ChangeOrgIDU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask , BaseUnit, Menus, DB, DBCtrls,
  xpBitBtn, xpWindow, ExtActns, ActnList, AdvGlowButton;

type
  TFrChangeOrgID = class(TMBaseForm)
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Bevel1: TBevel;
    dUserSecs: TDataSource;
    pnlMain: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrChangeOrgID: TFrChangeOrgID;

implementation

uses Dmu, UMain, Inbox;



{$R *.DFM}

procedure TFrChangeOrgID.BitBtn2Click(Sender: TObject);
begin
 FInbox.CurrentOrgId:=DBLookupComboBox1.KeyValue;
 //ShowMessage(IntToStr(FInbox.CurrentOrgId));

  _ActiveSemat:=Dm.Select_UserOrgidOrgid.AsInteger;
  MainForm.statusSemat.Caption:=Dm.GetSemat(_ActiveSemat);
  FInbox.FromOrgTree.RootID:=_ActiveSemat;
  MainForm.RefreshQuery;

 close;
end;

procedure TFrChangeOrgID.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TFrChangeOrgID.FormShow(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.KeyValue:=Dm.SecId;
end;

end.
