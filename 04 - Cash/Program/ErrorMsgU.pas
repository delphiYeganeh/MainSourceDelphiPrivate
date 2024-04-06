unit ErrorMsgU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, StdCtrls, Mask, DBCtrls, DB, ADODB,BaseUnit,
  ExtCtrls;

type
  TFrErrorMsg = class(TYBaseForm)
    DErrorMessage: TDataSource;
    ErrorMessage: TADOTable;
    Panel1: TPanel;
    Label2: TLabel;
    search: TEdit;
    ErrorMessageErrorid: TAutoIncField;
    ErrorMessageErrorMessage: TWideStringField;
    ErrorMessageErrorDate: TWideStringField;
    ErrorMessageUserID: TIntegerField;
    ErrorMessageFarsiMessage: TWideStringField;
    ErrorMessageShowMessage: TBooleanField;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel4: TPanel;
    YDBGrid1: TYDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure searchEnter(Sender: TObject);
    procedure searchExit(Sender: TObject);
    procedure searchChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrErrorMsg: TFrErrorMsg;

implementation

uses DMU, YShamsiDate;


{$R *.dfm}

procedure TFrErrorMsg.FormCreate(Sender: TObject);
begin
  with ErrorMessage do
    if not Active then
      Open;
end;

procedure TFrErrorMsg.searchEnter(Sender: TObject);
begin
  windows.ActivateKeyboardLayout(1,1);
end;

procedure TFrErrorMsg.searchExit(Sender: TObject);
begin
  windows.ActivateKeyboardLayout(1,1);
end;

procedure TFrErrorMsg.searchChange(Sender: TObject);
begin
  ErrorMessage.Locate('ErrorMessage',search.Text,[lopartialkey]);
end;

procedure TFrErrorMsg.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrErrorMsg.FormShow(Sender: TObject);
begin
  inherited;
   {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,YDBGrid1);
end;

procedure TFrErrorMsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   {Ranjbar Ver3}
  DBGrid_SaveColumns(Self.Name,YDBGrid1);
end;

end.
