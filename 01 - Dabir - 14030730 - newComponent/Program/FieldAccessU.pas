unit FieldAccessU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls,  ExtActns,
  ActnList, DB, StdCtrls, DBCtrls, xpBitBtn, Buttons, Menus, ADODB,
  AppEvnts, AdvGlowButton;

type
  TFrFieldAccess = class(TMBaseForm)
    Panel1: TPanel;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    Panel2: TPanel;
    YDBGrid2: TYDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    xpBitBtn1: TAdvGlowButton;
    sp_get_userTable_by_UserID: TADOStoredProc;
    sp_get_userTable_by_UserIDTableId: TIntegerField;
    sp_get_userTable_by_UserIDTableName: TWideStringField;
    sp_get_userTable_by_UserIDDescription: TWideStringField;
    sp_get_userTable_by_UserIDTableType: TWordField;
    sp_get_userTable_by_UserIDTableCode: TStringField;
    sp_get_userTable_by_UserIDUserField1: TWideStringField;
    sp_get_userTable_by_UserIDUserField2: TWideStringField;
    sp_get_userTable_by_UserIDhasAccess: TBooleanField;
    sp_get_userTable_by_UserIDAccessName: TStringField;
    Insert_TableAccess: TADOStoredProc;
    get_userTable_by_UserID: TADOQuery;
    get_userTable_by_UserIDTableId: TIntegerField;
    get_userTable_by_UserIDTableName: TWideStringField;
    get_userTable_by_UserIDDescription: TWideStringField;
    get_userTable_by_UserIDTableType: TWordField;
    get_userTable_by_UserIDTableCode: TStringField;
    get_userTable_by_UserIDUserField1: TWideStringField;
    get_userTable_by_UserIDUserField2: TWideStringField;
    get_userTable_by_UserIDhasAccess: TBooleanField;
    get_userTable_by_UserIDHasDelete: TBooleanField;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure YDBGrid2CellClick(Column: TColumn);
    procedure sp_get_userTable_by_UserIDCalcFields(DataSet: TDataSet);
    procedure YDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFieldAccess: TFrFieldAccess;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrFieldAccess.FormCreate(Sender: TObject);
begin
  inherited;
   insert_FieldAccess;
   Insert_TableAccess.ExecProc;
   Open_UserTable('');
   get_userTable_by_UserID.close;
//   get_userTable_by_UserID.Parameters.ParamByName('@like').Value := '';
   if DBLookupComboBox1.KeyValue>0 then
      get_userTable_by_UserID.Parameters[0].Value := DBLookupComboBox1.KeyValue
   else
      get_userTable_by_UserID.Parameters[0].Value := 0;
   get_userTable_by_UserID.Open;
//DBLookupComboBox1.

end;

procedure TFrFieldAccess.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
   get_userTable_by_UserID.close;
//   get_userTable_by_UserID.Parameters.ParamByName('@like').Value := '';
   if DBLookupComboBox1.KeyValue>0 then
      get_userTable_by_UserID.Parameters[0].Value := DBLookupComboBox1.KeyValue
   else
      get_userTable_by_UserID.Parameters[0].Value := 0;
   get_userTable_by_UserID.Open;

  if DBLookupComboBox1.KeyValue>0 then
     Open_FieldAccess_by_TableID(get_userTable_by_UserIDTableId.AsInteger,DBLookupComboBox1.KeyValue);
end;

procedure TFrFieldAccess.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TFrFieldAccess.YDBGrid2CellClick(Column: TColumn);
begin
  inherited;
  if DBLookupComboBox1.KeyValue>1 then
      Open_FieldAccess_by_TableID(get_userTable_by_UserIDTableId.AsInteger,DBLookupComboBox1.KeyValue);


end;

procedure TFrFieldAccess.sp_get_userTable_by_UserIDCalcFields(
  DataSet: TDataSet);
begin
  inherited;
//   if get_userTable_by_UserIDhasAccess.AsBoolean then
//      get_userTable_by_UserIDAccessName.Value := 'ÏÇÑÏ'
//   else
//      get_userTable_by_UserIDAccessName.Value := 'äÏÇÑÏ';
end;

procedure TFrFieldAccess.YDBGrid2DblClick(Sender: TObject);
begin
  inherited;
//  with TADOQuery.Create(nil) do
//  begin
//      Connection := dm.YeganehConnection;
//      SQL.Text := 'UPDATE UserTable SET hasAccess = not(hasAccess) WHERE userID ='+ IntToStr(DBLookupComboBox1.KeyValue)+' AND tableID='+ get_userTable_by_UserIDTableId.AsString;
//      ExecSQL;
//  end;
    if DBLookupComboBox1.KeyValue>0 then
      Open_FieldAccess_by_TableID(get_userTable_by_UserIDTableId.AsInteger,DBLookupComboBox1.KeyValue);
  with TADOQuery.Create(nil) do
  begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'UPDATE UserTable SET HasDelete = not(HasDelete) WHERE userID ='+ IntToStr(DBLookupComboBox1.KeyValue)+' AND tableID='+ get_userTable_by_UserIDTableId.AsString;
      ExecSQL;
  end;

end;

end.
