unit UAddFamily;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Menus, ActnList, DBCtrls, Mask, Grids,
  DBGrids, YDbgrid, StdCtrls, ComCtrls, AdvGlowButton, ExtCtrls, DBActns,
  XPStyleActnCtrls, ActnMan;

type
  TFrmAddFamily = class(TYBaseForm)
    pnlMain: TPanel;
    Panel3: TPanel;
    BitBtn13: TAdvGlowButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    TabSheet2: TTabSheet;
    LBSbj: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn11: TAdvGlowButton;
    BitBtn10: TAdvGlowButton;
    BitBtn9: TAdvGlowButton;
    BitBtn7: TAdvGlowButton;
    BitBtn8: TAdvGlowButton;
    ActionManager_Master: TActionManager;
    DataSetInsert_Master: TDataSetInsert;
    DataSetDelete_Master: TDataSetDelete;
    DataSetEdit_Master: TDataSetEdit;
    DataSetPost_Master: TDataSetPost;
    DataSetCancel_Master: TDataSetCancel;
    Action_Master: TAction;
    DataSetNext_Master: TDataSetNext;
    DataSetPrior_Master: TDataSetPrior;
    Panel1: TPanel;
    procedure BitBtn13Click(Sender: TObject);
    procedure DataSetDelete_MasterExecute(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAddFamily: TFrmAddFamily;

implementation

uses Dmu,BusinessLayer ;

{$R *.dfm}

procedure TFrmAddFamily.BitBtn13Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmAddFamily.DataSetDelete_MasterExecute(Sender: TObject);
begin
  inherited;
 if MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mryes then
   dm.Family.Delete;
end;

procedure TFrmAddFamily.SearchEditChange(Sender: TObject);
begin
  inherited;
  dm.Family.Locate('Familytitle',SearchEdit.text,[lopartialkey])
end;

procedure TFrmAddFamily.FormShow(Sender: TObject);
begin
  inherited;
   self.Caption := ' ⁄—Ì› '+  Get_SystemSetting('FamilyTitle');
end;

end.
