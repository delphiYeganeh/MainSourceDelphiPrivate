unit UInputUserTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  StdCtrls, xpEdit, ExtCtrls, ComCtrls, xpPages, xpWindow, ExtActns,
  ActnList, Buttons, Menus, ValEdit;

type
  TFrInputUserTable = class(TMBaseForm)
    get_userfields_by_tableID: TADOStoredProc;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    xpBitBtn3: TBitBtn;
    btnMoveToList: TBitBtn;
    lstSelectedForms: TListBox;
    get_userfields_by_tableIDID: TAutoIncField;
    get_userfields_by_tableIDFieldName: TWideStringField;
    get_userfields_by_tableIDTableID: TIntegerField;
    get_userfields_by_tableIDDescription: TWideStringField;
    get_userfields_by_tableIDIsWhere: TBooleanField;
    get_userfields_by_tableIDISString: TBooleanField;
    get_userfields_by_tableIDIsLike: TBooleanField;
    get_userfields_by_tableIDEveryLike: TBooleanField;
    get_userfields_by_tableIDVisibleInGrid: TBooleanField;
    get_userfields_by_tableIDisblob: TBooleanField;
    get_userfields_by_tableIDFieldTypeID: TIntegerField;
    get_userfields_by_tableIDReferenceTableID: TIntegerField;
    get_userfields_by_tableIDorder: TIntegerField;
    get_userfields_by_tableIDFieldGroupID: TIntegerField;
    get_userfields_by_tableIDisboolean: TBooleanField;
    BitBtn1: TBitBtn;
    btnAddFormToLetter: TBitBtn;
    QInsertSelectedFormsToLetter: TADOQuery;
    Insert_TableAccess: TADOStoredProc;
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
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SearchEditChange(Sender: TObject);
    procedure btnMoveToListClick(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAddFormToLetterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
  private
    FLetterID: Integer;
    procedure SetLetterID(const Value: Integer);
    procedure DisableSelectedForms;
    procedure EnableSelectedForms;
  public
    { Public declarations }
    property LetterID:Integer read FLetterID write SetLetterID;
  end;


  TListItem= class
  private
    FIDForm: Integer;
    procedure SetIDForm(const Value: Integer);
     //
  protected
     //
  public
     property IDForm:Integer read FIDForm write SetIDForm;
  end;




var
  FrInputUserTable: TFrInputUserTable;

implementation

uses Dmu, uUserTablefields, businessLayer, UAddUserTableDlg;

{$R *.dfm}

procedure TFrInputUserTable.xpBitBtn4Click(Sender: TObject);
 var s: string;
begin
  inherited;
    dm.get_userTable.edit;
    FrAddUserTableDlg:=TFrAddUserTableDlg.Create(Application);
    FrAddUserTableDlg.ShowModal;
end;

procedure TFrInputUserTable.xpBitBtn2Click(Sender: TObject);
 var s: string;
 tableID: integer;
begin
   inherited;

   TableID:=dm.YeganehConnection.execute('select max(tableid)+1 from tables').Fields[0].Value;
   with dm , Get_userTable do
   begin
      insert;
      get_userTableTableId.Value:=tableID;
      get_userTableTableType.AsInteger:=3;
      get_userTableTableName.Value:='table';
   end;
   FrAddUserTableDlg:=TFrAddUserTableDlg.Create(Application);
   FrAddUserTableDlg.ShowModal;

   FrTableFields:=TFrTableFields.Create(Application);
   FrTableFields.TableID:=TableId;
   FrTableFields.ShowModal;
   Insert_TableAccess.ExecProc;
   insert_FieldAccess_by_TableID(tableID);
end;

procedure TFrInputUserTable.xpBitBtn5Click(Sender: TObject);
begin
   inherited;
   {   get_userfields_by_tableID.Close;
      get_userfields_by_tableID.Parameters.ParamByName('@TableID').Value := dm.get_userTableTableId.AsInteger;
      get_userfields_by_tableID.Open;
      if get_userfields_by_tableID.RecordCount > 0 then
      begin
         MBaseForm.MessageShowString('áØÝÇ ÞÈá ÇÒ ÍÐÝ ÇÏÇÑí ¡ ÝíáÏåÇí Âä ÑÇ ÍÐÝ äãÇííÏ', False);
         Exit;
      end;
get_userfields_by_tableID.close;   }
   
   if messageShowString(' ÈÇ ÍÐÝ ÝÑã ÊãÇãí ÝíáÏ åÇ æ ÇØáÇÚÇÊ åÇí íæÓÊ Èå äÇãå åÇ  ÏÑ Çíä ÝÑã ÍÐÝ ÎæÇåÏ ÔÏ ÂíÇ ÇÒ ÍÐÝ  Çíä ÝÑã ãØãÆä åÓÊíÏ¿',true) then
   begin
      Exec_delete_UserTable(dm.get_userTableTableId.AsInteger);
      SearchEdit.OnChange(nil);
   end;
end;

procedure TFrInputUserTable.xpBitBtn3Click(Sender: TObject);
var
  i : Integer;
begin
  inherited;
//  if lstSelectedForms.Count>0 then
//   for  i:=0  to lstSelectedForms.Count-1 do
//       ListSelectedForms[i]:=TListItem(lstSelectedForms.Items.Objects[i]).IDForm;

  close;
end;

procedure TFrInputUserTable.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  FrTableFields := TFrTableFields.Create(Application);
  FrTableFields.TableID:=dm.get_userTableTableId.AsInteger;
  FrTableFields.ShowModal;
  insert_FieldAccess_by_TableID(dm.get_userTableTableId.AsInteger);
end;

procedure TFrInputUserTable.FormCreate(Sender: TObject);
begin
  inherited;
//SearchEdit.OnChange(SearchEdit);
end;

procedure TFrInputUserTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
dm.Tables.Close;
dm.Tables.Open;
end;

procedure TFrInputUserTable.SearchEditChange(Sender: TObject);
begin
  inherited;
  //Open_UserTable(SearchEdit.Text);
  if btnMoveToList.Enabled then
  begin
   sp_get_userTable_by_UserID.Close;
   sp_get_userTable_by_UserID.Parameters.ParamByName('@like').Value := SearchEdit.Text;
   sp_get_userTable_by_UserID.Parameters.ParamByName('@userID').Value := _UserID;
   sp_get_userTable_by_UserID.Open;
  end
  else
     Open_UserTable(SearchEdit.Text);
end;

procedure TFrInputUserTable.btnMoveToListClick(Sender: TObject);
var
  ListItem : TListItem;
begin
  ListItem:=TListItem.Create;
  ListItem.IDForm := sp_get_userTable_by_UserIDTableID.AsInteger;//Dm.Get_userTableTableId.AsInteger;
  lstSelectedForms.AddItem(sp_get_userTable_by_UserIDDescription.AsString,ListItem);//(Dm.Get_userTableDescription.AsString,ListItem);
end;

{ TListItem }

procedure TListItem.SetIDForm(const Value: Integer);
begin
  FIDForm := Value;
end;

procedure TFrInputUserTable.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
     Color := clBtnFace
  else
     Color := clWhite;
end;

procedure TFrInputUserTable.BitBtn1Click(Sender: TObject);
begin
   lstSelectedForms.DeleteSelected;
end;

//function TFrInputUserTable.GetListSelectedForms(index: Integer): integer;
//begin
//  Result:=FListSelectedForms[index];
//end;
//
//procedure TFrInputUserTable.SetListSelectedForms(index: Integer;
//  const Value: integer);
//begin
//  SetLength(FListSelectedForms,Length(FListSelectedForms)+1);
//  FListSelectedForms[index]:=Value;
//end;

procedure TFrInputUserTable.SetLetterID(const Value: Integer);
begin
  FLetterID := Value;
end;

procedure TFrInputUserTable.btnAddFormToLetterClick(Sender: TObject);
var
  i : Integer;
begin
   if lstSelectedForms.Count>0 then
   begin
       for  i:=0  to lstSelectedForms.Count-1 do
       begin
          QInsertSelectedFormsToLetter.Close;
          QInsertSelectedFormsToLetter.Parameters.ParamByName('LetterID').Value:=LetterID;
          QInsertSelectedFormsToLetter.Parameters.ParamByName('FormID').Value:=TListItem(lstSelectedForms.Items.Objects[i]).IDForm;
          QInsertSelectedFormsToLetter.Parameters.ParamByName('UserID').Value:=_UserID;          
          QInsertSelectedFormsToLetter.ExecSQL;
       end;
       ShowMsgString('ÝÑã åÇí ÇäÊÎÇÈ ÔÏå Èå äÇãå íæÓÊ ÔÏäÏ');
       lstSelectedForms.Clear;
       Close;
   end
   else
      ShowMsgString('åí äÇãå Çí ÇäÊÎÇÈ äÔÏå ÇÓÊ');
end;

procedure TFrInputUserTable.DisableSelectedForms;
begin
      BitBtn1.Enabled:=False;
      btnMoveToList.Enabled:=False;
      btnAddFormToLetter.Enabled:=False;
      lstSelectedForms.Enabled:=False;
      DSForm.DataSet := dm.Get_userTable;
end;

procedure TFrInputUserTable.EnableSelectedForms;
begin
      BitBtn1.Enabled:=True;
      btnMoveToList.Enabled:=True;
      btnAddFormToLetter.Enabled:=True;
      lstSelectedForms.Enabled:=True;
      DSForm.DataSet := sp_get_userTable_by_UserID;
end;

procedure TFrInputUserTable.FormShow(Sender: TObject);
begin
  inherited;
  if LetterID>0 then EnableSelectedForms else DisableSelectedForms;
  SearchEditChange(self);
end;

procedure TFrInputUserTable.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btnMoveToListClick(Application);
end;

end.
