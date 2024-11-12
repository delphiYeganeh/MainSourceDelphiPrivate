unit UTotalExactCopy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB,
  UemsVCL, ComCtrls, Grids, DBGrids, ActnList, ExtActns, Menus, xpWindow;

type
  TFExactGroup = class(TMBaseForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBparaph: TMemo;
    Label2: TLabel;
    DBEdit9: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    desc: TLabel;
    SpeedButton2: TSpeedButton;
    DBShamsiDateEdit2: TShamsiDateEdit;
    Label6: TLabel;
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
  FExactGroup: TFExactGroup;

implementation

uses FromOrgU, Dmu, businessLayer, UMain;

{$R *.dfm}

procedure TFExactGroup.BitBtn1Click(Sender: TObject);
var i,k: integer;
begin
  inherited;
  with MainForm do
   begin
    k:=dm.Get_All_LetterLetterID.Value;

  if _selectedLettersID.Count>0 then
     for i:=0 to _selectedLettersID.Count-1 do
      begin
           dm.Get_All_Letter.Locate('Letterid',strtoint(_selectedLettersID[i]),[]);
           Exec_sp_Add_GroupRecommite
           (strtoint(_selectedLettersID[i]),1,DBLookupComboBox2.KeyValue,DBparaph.Text,DBShamsiDateEdit2.Text,_userid,true,false,DBEdit1.Text);
      end;
      end;

   dm.Get_All_Letter.Locate('Letterid',k,[]);
  close;
end;

procedure TFExactGroup.FormShow(Sender: TObject);
begin
  inherited;
 DBEdit9.SetFocus;
end;

procedure TFExactGroup.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFExactGroup.SpeedButton2Click(Sender: TObject);
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


procedure TFExactGroup.SetReceiveMode(value:boolean);
begin
 FReceiveMode:=value;


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
procedure TFExactGroup.update_OrgStaffer;
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
procedure TFExactGroup.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  update_OrgStaffer;
   TEditExit(sender);
end;

procedure TFExactGroup.DBLookupComboBox2Click(Sender: TObject);
begin
  inherited;
   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
   update_OrgStaffer;
end;

procedure TFExactGroup.FormCreate(Sender: TObject);
begin
  inherited;
  DBShamsiDateEdit2.Text:=_Today;
  if DSForm.DataSet.State<>dsinsert then
   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
end;

procedure TFExactGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 dm.Select_LetterReCommite.Cancel;
end;

end.
