 unit AddFamilyU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, StdCtrls, Mask, DBCtrls, ActnList, Buttons,
  DBActns, ActnMan, XPStyleActnCtrls, Grids, DBGrids, YDbgrid,
  ComCtrls, xpPages, Menus;

type
  TFrAddFamily = class(TYBaseForm)
    ActionManager1: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetNext1: TDataSetNext;
    DataSetPrior1: TDataSetPrior;
    xpPageControl1: TPageControl;
    xpTabSheet1: TTabSheet;
    xpTabSheet2: TTabSheet;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    SearchTitle: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    Panel2: TPanel;
    BitBtn8: TBitBtn;
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddFamily: TFrAddFamily;

implementation

uses DMU, ADODB, DB,BusinessLayer;

{$R *.dfm}

procedure TFrAddFamily.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
 if MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mryes then
   dm.Family.Delete;
end;

procedure TFrAddFamily.SearchEditChange(Sender: TObject);
begin
  inherited;
dm.Family.Locate('Familytitle',SearchEdit.text,[lopartialkey])
end;

procedure TFrAddFamily.AExitExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrAddFamily.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.04.22}
   FrAddFamily.Caption := ' ⁄—Ì› '+  Get_SystemSetting('FamilyTitle');
   //---
end;

end.
