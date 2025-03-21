unit ErrorMsg;

interface

uses
  YDbgrid,Forms, DB, ADODB, Mask, DBCtrls, StdCtrls, Controls, Grids,
  DBGrids, Classes,windows, BaseUnit, ExtActns, ActnList, Menus;

type
  TFErrorMsg = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    Label1: TLabel;
    search: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DErrorMessage: TDataSource;
    ErrorMessage: TADOTable;
    procedure FormCreate(Sender: TObject);
    procedure searchEnter(Sender: TObject);
    procedure searchExit(Sender: TObject);
    procedure searchChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FErrorMsg: TFErrorMsg;

implementation

uses   Dmu;

{$R *.dfm}

procedure TFErrorMsg.FormCreate(Sender: TObject);
begin
  with ErrorMessage do
      if not Active then Open;
end;

procedure TFErrorMsg.searchEnter(Sender: TObject);
begin
ActivateKeyboardLayout(1,1);
end;

procedure TFErrorMsg.searchExit(Sender: TObject);
begin
  windows.ActivateKeyboardLayout(1,1);
end;

procedure TFErrorMsg.searchChange(Sender: TObject);
begin
  dm.ErrorMessage.Locate('ErrorMessage',search.Text,[lopartialkey]);
end;

procedure TFErrorMsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
