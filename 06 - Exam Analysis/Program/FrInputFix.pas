unit FrInputFix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, ToolWin, ActnMan, ActnCtrls, ActnMenus,
  Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons, XPStyleActnCtrls,BaseUnit,
  ExtActns, ExtCtrls, xpWindow;

type
  TFfixInput = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    DataSetFirst1: TDataSetFirst;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    dsform: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DataSetDelete1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Table:TADOTable;

  end;

var
  FfixInput: TFfixInput;

implementation

uses dmu;


{$R *.dfm}

procedure TFfixInput.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFfixInput.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
 _ResultID:=Table.Fields[0].Value;
end;

procedure TFfixInput.FormShow(Sender: TObject);
begin
 DSForm.DataSet:=Table;
 Table.Open;
 try
  YDBGrid1.Columns.Items[0].Title.Caption:='ﬂœ';
 YDBGrid1.Columns.Items[1].Title.Caption:='⁄‰Ê«‰';
  except end;
end;

procedure TFfixInput.Edit1Change(Sender: TObject);
var s,t:WideString;
begin
  inherited;
  s:=Table.Fields[1].FieldName;
  t:=Edit1.Text;
  Table.Locate(s,t,[loPartialKey]);

end;

procedure TFfixInput.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
  if MessageDlg('¬Ì« «“ Õ–› ﬂ·ÌÂ «ÿ·«⁄«   „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
      Table.Delete;

end;

end.
