unit ErrorMsg;

interface

uses
  YDbgrid,Forms, DB, ADODB, Mask, DBCtrls, StdCtrls, Controls, Grids,
  DBGrids, Classes,windows, ExtCtrls;

type
  TFErrorMsg = class(TForm)
    DErrorMessage: TDataSource;
    ErrorMessage: TADOTable;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    search: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    ErrorMessageErrorid: TLargeintField;
    ErrorMessageErrorMessage: TWideStringField;
    ErrorMessageErrorDate: TWideStringField;
    ErrorMessageUserCode: TIntegerField;
    ErrorMessageFarsiMessage: TWideStringField;
    ErrorMessageShowMessage: TBooleanField;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure searchEnter(Sender: TObject);
    procedure searchExit(Sender: TObject);
    procedure searchChange(Sender: TObject);
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
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;
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
  {dm.}ErrorMessage.Locate('ErrorMessage',search.Text,[lopartialkey]);
end;

end.
