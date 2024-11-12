unit uAddExtentionDialog;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, Windows,ActnList, XPStyleActnCtrls,  xpBitBtn, ADODB, Menus,
  AppEvnts, ExtCtrls, AdvGlowButton;

type
  TFrAddExtentionDialog = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TDBEdit;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Label1: TLabel;
    Place: TDBEdit;
    Label3: TLabel;
    Panel1: TPanel;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PlaceEnter(Sender: TObject);
    procedure PlaceExit(Sender: TObject);
    function ValidSTR(str: string): boolean;
    function ExistsEXT(str: string): boolean;

  private
    { Private declarations }
  public
   done:boolean;
   insertMode : boolean;
    { Public declarations }
  end;

var
  FrAddExtentionDialog: TFrAddExtentionDialog;

implementation

uses Dmu, businessLayer, Forms;

{$R *.dfm}

procedure TFrAddExtentionDialog.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if ValidSTR(Place.Text) then
  begin
      if Not (ExistsEXT(Place.Text)) or ( not insertMode) then
      begin
         dm.Extention.Post;
         Exec_insert_Extention(dm.ExtentionExtentionID.AsInteger);
         close;
      end
      else
         ShowMsgString('Å”Ê‰œ „Ê—œ ‰Ÿ— œ— Å«Ìê«Â œ«œÂ „ÊÃÊœ «” ');
  end
  else
      ShowMsgString('·ÿ›« «“ ò«—ò — Â«Ì Œ«’ «” ›«œÂ ‰‘Êœ'+#13+'ò«—ò — Â«Ì Œ«’ ⁄»«— ‰œ «“ / \ : * ? '' " < > | .');
end;

procedure TFrAddExtentionDialog.BitBtn2Click(Sender: TObject);
begin
  inherited;
dm.Extention.Cancel;
close;
end;

function TFrAddExtentionDialog.ExistsEXT(str: string): boolean;
begin
   Result := false;
   with TADOQuery.Create(nil)do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT * FROM Extention WHERE Extention='''+str+''' AND isSystem=0' ;
      Open;
      if not IsEmpty then
         Result := True;
   end;
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

function TFrAddExtentionDialog.ValidSTR(str: string): boolean;
var
   i: integer;
begin
   Result := true;
   for i:=0 to length(str)-1 do
   begin
      if (str[i]='/')or(str[i]='|')or(str[i]='\')or
         (str[i]=':')or(str[i]='*')or(str[i]='"')or
         (str[i]='.')or(str[i]='<')or(str[i]='>')or(str[i]='''')then
         Result := false;
   end;
end;

end.
