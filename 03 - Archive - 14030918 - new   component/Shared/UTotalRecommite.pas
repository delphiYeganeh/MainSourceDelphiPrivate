unit UTotalRecommite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB,
  UemsVCL, ComCtrls, Grids, DBGrids, ActnList, ExtActns, xpWindow, xpBitBtn;

type
  TRecommiteGroup = class(TMBaseForm)
    GroupBox1: TGroupBox;
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    DBparaph: TMemo;
    Label2: TLabel;
    DBEdit9: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBCIsCopy: TDBCheckBox;
    Label4: TLabel;
    desc: TLabel;
    SpeedButton2: TSpeedButton;
    PCheck: TCheckBox;
    DBShamsiDateEdit2: TShamsiDateEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SetReceiveMode(value:boolean);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure update_OrgStaffer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
   FReceiveMode:boolean;
    { Private declarations }
  public
   done:boolean;
   proceeded:boolean;
   property ReceiveMode:boolean read Freceivemode write SetreceiveMode;
    { Public declarations }
  end;

var
  RecommiteGroup: TRecommiteGroup;

implementation

uses FromOrgU, Dmu, businessLayer, UMain;

{$R *.dfm}

procedure TRecommiteGroup.BitBtn1Click(Sender: TObject);
var i,k: integer;
begin
  inherited;
  with MainForm do
   begin
    k:=dm.Get_All_LetterLetterID.Value;

  if _selectedRecommitesID.Count>0 then
     for i:=0 to _selectedRecommitesID.Count-1 do
      begin
           dm.Get_All_Letter.Locate('Letterid',strtoint(_selectedRecommitesID[i]),[]);
           Exec_sp_Add_GroupRecommite
           (strtoint(_selectedRecommitesID[i]),3,DBLookupComboBox2.KeyValue,DBparaph.Text,DBShamsiDateEdit2.Text,_userid,DBCIsCopy.Checked,PCheck.Checked,DBEdit1.Text);
      end;
      end;

   dm.Get_All_Letter.Locate('Letterid',k,[]);
  close;
end;

procedure TRecommiteGroup.FormShow(Sender: TObject);
begin
  inherited;
 DBEdit9.SetFocus;
DBCIsCopy.Checked:=dm.Recommite_Copy;
end;

procedure TRecommiteGroup.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TRecommiteGroup.SpeedButton2Click(Sender: TObject);
begin
  inherited;
FromOrgForm:=TFromOrgForm.Create(Application);
FromOrgForm.OrganizeMode:=false;
FromOrgForm.ShowModal;
if FromOrgForm.done then
  begin
    dm.Select_LetterReCommiteOrgID.AsInteger:=_ResultOrgID;
    DBEdit9.Text:=_ResultOrgCode;
  end;

end;


procedure TRecommiteGroup.SetReceiveMode(value:boolean);
begin
 FReceiveMode:=value;

 DBCIsCopy.Visible:=ReceiveMode;

 if value then
  begin
   GroupBox1.Caption:='Ã“∆Ì«  «—Ã«⁄';
   desc.Caption:='„÷„Ê‰ «—Ã«⁄';
  end
  else
  begin
   GroupBox1.Caption:='Ã“∆Ì«  Å«—«›';
   desc.Caption:='„÷„Ê‰ Å«—«›';
  end;

end;
procedure TRecommiteGroup.update_OrgStaffer;
var _id:integer ;
ResponsibleStaffer:widestring;
begin
  inherited;
   if dm.FromOrganizations.Locate('Code',DBEdit9.Text,[]) then
     begin
      dm.Select_LetterReCommiteOrgID.AsInteger:= dm.FromOrganizationsID.AsInteger;
      dm.Select_LetterReCommiteOrgStaff.AsString:= dm.FromOrganizationsResponsibleStaffer.AsString;
     end
   else
     try
         Exec_Get_FromOrganizations_ByCode(DBEdit9.Text,_id,ResponsibleStaffer);
         dm.Select_LetterReCommiteOrgStaff.AsString:=ResponsibleStaffer;
         dm.Select_LetterReCommiteOrgID.AsInteger:=_id ;
      except end;
end;
procedure TRecommiteGroup.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  update_OrgStaffer;
   TEditExit(sender);
end;

procedure TRecommiteGroup.DBLookupComboBox2Click(Sender: TObject);
begin
  inherited;
   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
   update_OrgStaffer;
end;

procedure TRecommiteGroup.FormCreate(Sender: TObject);
begin
  inherited;
  DBShamsiDateEdit2.Text:=dm.today;
  if DSForm.DataSet.State<>dsinsert then
   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
end;

procedure TRecommiteGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 dm.Select_LetterReCommite.Cancel;
end;

end.
