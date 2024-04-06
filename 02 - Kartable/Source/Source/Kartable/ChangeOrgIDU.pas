unit ChangeOrgIDU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask , BaseUnit, Menus, DB, DBCtrls,
  xpBitBtn, xpWindow, ExtActns, ActnList;

type
  TFrChangeOrgID = class(TMBaseForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Bevel1: TBevel;
    DBLookupComboBox1: TDBLookupComboBox;
    dUserSecs: TDataSource;
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
