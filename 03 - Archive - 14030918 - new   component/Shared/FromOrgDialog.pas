unit FromOrgDialog;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, ActnList, XPStyleActnCtrls, ADODB, xpWindow, xpBitBtn,
  ExtCtrls;

type
  TFromOrgDialogF = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    DBEPhone: TDBEdit;
    DBEEmail: TDBEdit;
    DBEFax: TDBEdit;
    DBECode: TDBEdit;
    DBETitle: TDBEdit;
    DBEResponsibleStaffer: TDBEdit;
    ActionManager: TActionManager;
    aEXIT: TAction;
    Label3: TLabel;
    DBEPreCode: TDBEdit;
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
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEEmailEnter(Sender: TObject);
    procedure DBEEmailExit(Sender: TObject);
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

uses Dmu, SysUtils;

{$R *.dfm}

procedure TFromOrgDialogF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  //Ranjbar
  if Trim(FromorgTitle.AsString)='' then
  begin
     MBaseForm.MessageShowString('·ÿ›« ›Ì·œ ⁄‰Ê«‰ —« „ﬁœ«— œÂÌ ‰„«ÌÌœ', False);
     DBETitle.SetFocus;
     Abort;
  end;
  //---
  FromOrg.Edit;
  FromOrg.Post;
  done:=true;
  Close;
end;

procedure TFromOrgDialogF.BitBtn2Click(Sender: TObject);
begin
  inherited;
   Fromorg.Cancel;
   close;
end;

procedure TFromOrgDialogF.DBEEmailEnter(Sender: TObject);
begin
  inherited;

TEditEnter(sender);
end;

procedure TFromOrgDialogF.DBEEmailExit(Sender: TObject);
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
