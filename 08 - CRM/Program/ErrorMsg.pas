unit ErrorMsg;

interface

uses
  YDbgrid,Forms, DB, ADODB, Mask, DBCtrls, StdCtrls, Controls, Grids,
  DBGrids, Classes,windows, BaseUnit, ExtActns, ActnList;

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
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
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
  windows.ActivateKeyboardLayout(1,1);
end;

procedure TFErrorMsg.searchExit(Sender: TObject);
begin
  windows.ActivateKeyboardLayout(1,1);
end;

procedure TFErrorMsg.searchChange(Sender: TObject);
begin
  dm.ErrorMessage.Locate('ErrorMessage',search.Text,[lopartialkey]);
end;

procedure TFErrorMsg.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 637)  or (NewHeight < 430) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

end.
