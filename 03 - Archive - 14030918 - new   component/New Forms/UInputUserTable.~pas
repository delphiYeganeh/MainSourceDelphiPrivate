unit UInputUserTable;
{Ranjbar 89.05.15 ID=2}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList, Buttons, DBCtrls, Mask, AdvGlowButton;

type
  TFrInputUserTable = Class(TMBaseForm)
    Get_UserTable: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    Get_UserTableTableId: TWordField;
    Get_UserTableTableName: TWideStringField;
    Get_UserTableDescription: TWideStringField;
    Panel2: TPanel;
    xpBitBtn1: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    Panel4: TPanel;
    Label2: TLabel;
    DBEDescription: TDBEdit;
    DBN1: TDBNavigator;
    Panel5: TPanel;
    Get_UserTableTableType: TIntegerField;
    pnlMain: TPanel;
    SBExit: TAdvGlowButton;
    procedure SearchEditChange(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Get_UserTableAfterInsert(DataSet: TDataSet);
    procedure SBExitClick(Sender: TObject);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Get_UserTableBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrInputUserTable: TFrInputUserTable;

implementation

uses
  Dmu, uUserTablefields, YShamsiDate;

{$R *.dfm}

procedure TFrInputUserTable.SearchEditChange(Sender: TObject);
begin
  inherited;
  with Get_UserTable do
  begin
    Close;
    Parameters.ParamByName('@like').Value := SearchEdit.Text;
    Open;
    {Ranjbar 89.05.15 ID=2}
    if Trim(SearchEdit.Text) = '' then
      Last;
  end;
end;

procedure TFrInputUserTable.xpBitBtn1Click(Sender: TObject);
begin
   inherited;
   FrTableFields := TFrTableFields.Create(Application);
   FrTableFields.TableID := get_userTableTableId.AsInteger;
   FrTableFields.ShowModal;
end;

procedure TFrInputUserTable.FormCreate(Sender: TObject);
begin
   inherited;
   SearchEdit.OnChange(SearchEdit);  //Open Get_UserTable
end;

procedure TFrInputUserTable.Get_UserTableAfterInsert(DataSet: TDataSet);
begin
   inherited;
   get_userTableTableId.Value := dm.YeganehConnection.execute('select max(tableid)+1 from tables').Fields[0].Value;
   get_userTableTableType.AsInteger := 3;
   get_userTableTableName.Value := 'table';
end;

procedure TFrInputUserTable.SBExitClick(Sender: TObject);
begin
   inherited;
   close;
end;

procedure TFrInputUserTable.DBN1Click(Sender: TObject; Button: TNavigateBtn);
begin
   inherited;
   DBEDescription.SetFocus;
end;

procedure TFrInputUserTable.Get_UserTableBeforeDelete(DataSet: TDataSet);
Var
   FieldCount : Integer;
begin
   inherited;
   if MessageDlg('ÂíÇ ãÇíá Èå ÍĞİ İÑã ÌÇÑí åÓÊíÏ¿', mtInformation,[mbCancel,mbOk], 0) = mrCancel then
      Abort;

   FieldCount := dm.YeganehConnection.execute('Select Count(ID) from Fields Where TableID = '+
                                 get_userTableTableId.AsString).Fields[0].Value;
   if FieldCount > 0 then
   begin
      ShowMessage('ßÇÑÈÑ ÑÇãí ¡ áØİÇ ŞÈá ÇÒ ÍĞİ İÑã ÌÇÑí ¡ İíáÏåÇí ãÑÈæØå ÑÇ ÍĞİ äãÇííÏ');
      Abort;
   end;
end;

procedure TFrInputUserTable.FormShow(Sender: TObject);
begin
   inherited;
   DBNav_Setup(DBN1);
end;

procedure TFrInputUserTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   if get_userTable.State in [dsEdit,dsInsert] then
   begin
      ShowMessage('áØİÇ ÇØáÇÚÇÊ ÎæÏ ÑÇ ĞÎíÑå äãÇííÏ');
      Abort;
   end;   
end;

procedure TFrInputUserTable.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = Vk_Escape then
      SBExit.Click;
end;

end.
