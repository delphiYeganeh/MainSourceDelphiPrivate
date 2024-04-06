unit FromOrgDialog;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, ActnList, XPStyleActnCtrls, ADODB, Menus, ExtCtrls,
  AppEvnts;

type
  TFromOrgDialogF = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBECode: TDBEdit;
    DBETitle: TDBEdit;
    DBERespons: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ActionManager: TActionManager;
    aEXIT: TAction;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Fromorg: TADODataSet;
    FromorgID: TAutoIncField;
    FromorgTitle: TWideStringField;
    FromorgParentID: TIntegerField;
    FromorgPhone: TWideStringField;
    FromorgFax: TWideStringField;
    FromorgEmail: TWideStringField;
    FromorgResponsibleStaffer: TWideStringField;
    FromorgIsActive: TBooleanField;
    FromorgPreCode: TWideStringField;
    FromorgIsInnerOrg: TBooleanField;
    FromorgCode: TWideStringField;
    FromorgUniqueID: TLargeintField;
    FromorgGroupID: TIntegerField;
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
  FromOrgDialogF: TFromOrgDialogF;

implementation

uses Dmu, businessLayer, SysUtils;

{$R *.dfm}

procedure TFromOrgDialogF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Fromorg.State =dsinsert then
    if Exec_sp_duplicateOrg(FromorgCode.AsString,FromorgTitle.AsString) then
    begin
      ShowMsgString('«Ì‰ òœ Ì« ⁄‰Ê«‰ ﬁ»·«  ⁄—Ì› ‘œÂ «”  ·–« «“ òœ Ì« ⁄‰Ê«‰ œÌê—Ì «” ›«œÂ ò‰Ìœ');
      exit;
    end;

  FromOrg.Edit;
  if Trim(DBECode.Text)=''  then
  begin
    ShowMsgString('À»  òœ ç«—  ”«“„«‰Ì ÷—Ê—Ì «” ');
    DBECode.SetFocus;
    Abort;
  end;

  if trim(DBETitle.Text)=''  then
  begin
    ShowMsgString('À»  ⁄‰Ê«‰ ç«—  ”«“„«‰Ì ÷—Ê—Ì «” ');
    DBETitle.SetFocus;
    Abort;
  end;

  if trim(DBERespons.Text)=''  then
  begin
    ShowMsgString('À»  ‰«„ „”∆Ê· ç«—  ”«“„«‰Ì ÷—Ê—Ì «” ');
    DBERespons.SetFocus;
    Abort;
  end;

  FromOrg.Post;
  done:=true;
  close;
end;

procedure TFromOrgDialogF.BitBtn2Click(Sender: TObject);
begin
  inherited;
   Fromorg.Cancel;
   close;
end;

procedure TFromOrgDialogF.DBEdit6Enter(Sender: TObject);
begin
  inherited;
  TEditEnter(sender);
end;

procedure TFromOrgDialogF.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
end;

procedure TFromOrgDialogF.FormShow(Sender: TObject);
begin
  inherited;
  DBECode.SetFocus;
end;

end.
