unit USearchTitle;

interface

uses forms,  Classes, ActnList, ActnMan, StdCtrls,
 Dialogs,  Controls, Grids, DBGrids, YDbgrid, DB, BaseUnit, ADODB,Windows,SysUtils,
  ExtActns,  Menus, ExtCtrls, AppEvnts;
type
  TSearchAdoDataSet = class(TMBaseForm)
    DBG: TYDBGrid;
    Label2: TLabel;
    LookupEdit: TEdit;
    SearchF: TADODataSet;
    ActionList1: TActionList;
    Adone: TAction;
    AFail: TAction;
    ADOQuery1: TADOQuery;
    procedure DBGDblClick(Sender: TObject);
    procedure LookupEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookupEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdoneExecute(Sender: TObject);
    procedure AFailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
   TableName:string;
   CodeField ,TitleField :string;
   SearchDataSet: boolean;
   flag : Integer;
   fld1,fld2,fld3,fld4,fld5 : Integer;
    { Public declarations }
  end;
var
  SearchAdoDataSet: TSearchAdoDataSet;


implementation

uses DateUtils, Dmu, YShamsiDate, userDefine;
{$R *.dfm}

procedure TSearchAdoDataSet.DBGDblClick(Sender: TObject);
begin
  inherited;
  Close;
//  if flag <> 1 then
    //Adone.Execute
 { else
    begin
      if UserDefineF.Type_New = 1 then
      begin
        fld1:= DBG.Fields[0].Value;
        //UserDefineF.DBLookupComboBox5.Text := DBG.Fields[1].Value;
        //Dm.qry
        Dm.UsersFromOrgID.Value := DBG.Fields[0].Value;
      end;
      if UserDefineF.Type_New = 2 then
      begin
        fld2:= DBG.Fields[0].Value;
        //UserDefineF.DBLookupComboBox6.Text := DBG.Fields[1].Value;
        Dm.UsersSecondOrgID.Value := DBG.Fields[0].Value;
      end;
      if UserDefineF.Type_New = 3 then
      begin
        fld3:= DBG.Fields[0].Value;
        //UserDefineF.DBLookupComboBox7.Text := DBG.Fields[1].Value;
        Dm.UsersTreeOrgID.Value := DBG.Fields[0].Value;
      end;
      if UserDefineF.Type_New = 4 then
      begin
        fld4:= DBG.Fields[0].Value;
        //UserDefineF.DBLookupComboBox8.Text := DBG.Fields[1].Value;
        Dm.UsersFourOrgID.Value := DBG.Fields[0].Value;
      end;
      if UserDefineF.Type_New = 5 then
      begin
        fld5:= DBG.Fields[0].Value;
//        UserDefineF.DBLookupComboBox9.Text := DBG.Fields[1].Value;
        Dm.UsersFiveOrgID.Value := DBG.Fields[0].Value;
      end;

       //ShowMessage(DBG.Fields[0].Value);
    //ADOQuery1.Close;
    //ADOQuery1.SQL.Text := 'Update FromOrganizations Set GroupID = ' + 'WHERE id = '
    end  }
end;
procedure TSearchAdoDataSet.LookupEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
case key of
     Vk_Down,Vk_Up: DBG.SetFocus;
     vk_Return :Adone.Execute;
 end;
end;

procedure TSearchAdoDataSet.LookupEditChange(Sender: TObject);
begin
  inherited;
  With SearchF do
   begin
    close;
    if is_integer(LookupEdit.Text) then
     CommandText:=TableName+' where '+CodeField+' like ''%'+LookupEdit.Text+'%'''
    else
     CommandText:=TableName+' where '+TitleField+' like ''%'+LookupEdit.Text+'%''';
    Open;
   end;
end;

procedure TSearchAdoDataSet.FormShow(Sender: TObject);
var i: byte;
begin
  inherited;
  if CodeField='' then CodeField:='Code';
  if TitleField='' then TitleField:='Title';
  if not SearchDataSet then
   begin
    if pos('SELECT',UpperCase(TableName))=0 then
       TableName:='select '+CodeField+','+TitleField+' from '+ TableName;

    SearchF.CommandText:=TableName;
    SearchF.Open;
  end;
    with dbg do
     begin
       Columns[0].Title.Caption:='˜Ï';
       Columns[0].Width:=60;
       Columns[1].Title.Caption:='ÚäæÇä';
       Columns[1].Width:=240;
     for i:=0 to Columns.Count-1 do
     with Columns[i] do
      begin
        if (pos('CODE',UpperCase(FieldName))<>0) or (UpperCase(FieldName)='ID') Then
          begin
           Title.Caption:='˜Ï';
           Width:=60;
          end;
       if (UpperCase(FieldName)='TITLE') or (UpperCase(FieldName)='NAME') Then
          begin
           Title.Caption:='ÚäæÇä';
           Width:=240;
          end;
      end;
     end;
end;

procedure TSearchAdoDataSet.AdoneExecute(Sender: TObject);
begin
  inherited;
 {   if flag <> 1 then
    begin}
      DM.SearchResult:=DSForm.DataSet.FieldByName(CodeField).AsInteger;
      Close;
{    end
    else
    // Dm.Users}
end;

procedure TSearchAdoDataSet.AFailExecute(Sender: TObject);
begin
  inherited;
  DM.SearchResult:=-1;
  close;
end;

procedure TSearchAdoDataSet.FormCreate(Sender: TObject);
begin
  inherited;
  DM.SearchResult:=-1;
end;

procedure TSearchAdoDataSet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.SearchResult:=DSForm.DataSet.FieldByName(CodeField).AsInteger;
   Close;
end;

end.
