unit AddSessionU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, DBActns, XPStyleActnCtrls, ActnMan, Mask,
  DBCtrls, Grids, DBGrids, YDbgrid, StdCtrls, ExtCtrls, ComCtrls,
  ActnList, xpButton,  xpPanel, DB, ADODB, WordXP,
  OleServer, Menus;

type
  TFSession = class(TYBaseForm)
    pageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    label1: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    ActionManager1: TActionManager;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Asearch: TAction;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    OpenDialog: TOpenDialog;
    DataSetInsert1: TDataSetInsert;
    YDBGrid1: TYDBGrid;
    SaveDialog: TSaveDialog;
    GroupBox1: TGroupBox;
    xpBitBtn2: TBitBtn;
    xpBitBtn4: TBitBtn;
    xpBitBtn3: TBitBtn;
    Panel1: TPanel;
    xpBitBtn5: TBitBtn;
    EditBtn: TBitBtn;
    PostBtn: TBitBtn;
    Delbtn: TBitBtn;
    CancelBtn: TBitBtn;
    xpBitBtn1: TBitBtn;
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpButton5Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSession: TFSession;

implementation

uses dmu;


{$R *.dfm}

procedure TFSession.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
    if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mryes then
//      sp_selectSession.Delete;
end;

procedure TFSession.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
//
  pageControl.ActivePageIndex:=1;
end;

procedure TFSession.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
//  sp_selectSessionSessionDoc.SaveToFile('c:\temp.doc');
//  dm.OpenWordFile('c:\temp.doc',True);

end;

procedure TFSession.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
{  if OpenDialog.Execute then
  begin
   sp_selectSession.Edit;
   sp_selectSessionSessionDoc.LoadFromFile(OpenDialog.FileName);
   sp_selectSession.Post;
  end;
 }
end;

procedure TFSession.xpButton5Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFSession.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
{  if SaveDialog.Execute then
  begin
  if  Pos('.',OpenDialog.FileName)<>1 then
     text :=OpenDialog.FileName+'.doc';
     sp_selectSessionSessionDoc.SaveToFile(text);
  end;
 }
end;


procedure TFSession.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
 Close;
end;





end.
