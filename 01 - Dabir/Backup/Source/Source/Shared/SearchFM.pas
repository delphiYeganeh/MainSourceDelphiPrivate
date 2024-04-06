{Ranjbar}
unit SearchFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DB, DBTables, Buttons, XPMan,
  Grids, DBGrids, ADODB, BaseUnit, Menus, ExtActns, ActnList, YDbgrid,
  AppEvnts;

type
  TFmSearch = class(TMBaseForm)
    DSSearch: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    EditSearch: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridSearch: TYDBGrid;
    LabelDisplayName: TLabel;
    Label2: TLabel;
    XPManifest1: TXPManifest;
    procedure EditSearchChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridSearchTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBGridSearchDblClick(Sender: TObject);
    procedure DBGridSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
  public
    GlobalSqlText:String;
    Function GetSearchValue(QrSearch: TADOQuery ; KeyField: String;SearchField:String ;
                            Key:Char ; FHeight, FWidth: Integer): String;
  Published

  end;

Const
  Col_Color : Tcolor = $00E7E6FF;

var
  FmSearch: TFmSearch;
  _keyField: string; // Amin 1391/07/29
  finalresult: Variant; // Amin 1391/07/29

implementation

uses UMain ,YShamsiDate, PhoneFm, Dmu;

{$R *.dfm}

//„À«·
//if FmSearch.GetSearchValue(QrOrg,'ID','Title',' ',550,500)<>'0' then
function TFmSearch.GetSearchValue(QrSearch: TADOQuery ; KeyField: String; SearchField:String ;Key:Char ; FHeight, FWidth: Integer): String;
var
   I,J:integer;
   SqlText : String;
   QtmpSearch: TADOQuery; // Amin 1391/07/29
begin
  try
    if Key = Char(Vk_Return) then
    begin
      Result := '0';
      Exit;
    end;

    FmSearch := TFmSearch.Create(Application);
    SqlText := QrSearch.SQL.Text;
    FmSearch.GlobalSqlText := SqlText;
    FmSearch.Height := FHeight;
    FmSearch.Width  := FWidth;
    J:=0;
    if not QrSearch.Active then
    begin
      QrSearch.Open;
    end;

     // Amin 1391/07/29 Start
    QtmpSearch:= TADOQuery.Create(nil);
    QtmpSearch.Name := QrSearch.Name;
    QtmpSearch.SQL.Text := FmSearch.GlobalSqlText;
    QtmpSearch.Connection := Dm.YeganehConnection;
    for i:= 0 to QrSearch.Parameters.Count-1 do
    begin
      QtmpSearch.Parameters.Add;
      QtmpSearch.Parameters[i].Name := QrSearch.Parameters[i].Name;
      QtmpSearch.Parameters[i].DataType:= QrSearch.Parameters[i].DataType;
      QtmpSearch.Parameters[i].Value:= QrSearch.Parameters[i].Value;
    end;
    FmSearch.DSSearch.DataSet := QtmpSearch;
    QtmpSearch.Open;
    // Amin 1391/07/29 End
    // Amin 1391/07/29 FmSearch.DSSearch.DataSet := QrSearch;

    //Important: Not Use dgRowSelect
    FmSearch.DBGridSearch.Options:= [dgTitles,dgIndicator,dgColumnResize,dgColLines,
                                    dgRowLines,dgTabs,dgAlwaysShowSelection];
    FmSearch.DBGridSearch.Columns.Clear;
    for I := 0 to QrSearch.FieldCount -1 do
      if QrSearch.Fields[I].Tag = 1 then
      begin
        FmSearch.DBGridSearch.Columns.Add;
        FmSearch.DBGridSearch.Columns.Items[J].Title.Caption := QrSearch.Fields[I].DisplayName;
        FmSearch.DBGridSearch.Columns.Items[J].FieldName     := QrSearch.Fields[I].FieldName;
        FmSearch.DBGridSearch.Columns.Items[J].Title.Alignment := taCenter;
        Inc(J);
      end;

    for I := 0 to FmSearch.DBGridSearch.Columns.Count-1 do
      if UpperCase(FmSearch.DBGridSearch.Columns.Items[I].FieldName) = UpperCase(Trim(SearchField)) then
      begin
        FmSearch.DBGridSearch.SelectedIndex := I;
        FmSearch.DBGridSearch.Columns.Items[I].Color := Col_Color;
        FmSearch.LabelDisplayName.Caption := Trim(FmSearch.DBGridSearch.Columns.Items[I].Title.caption);
        Break;
      end;

    FmSearch.EditSearch.Text := Trim(Key);

    _keyField:= KeyField;// Amin 1391/07/29
    if FmSearch.ShowModal = mrOK then
    begin
        // Amin 1391/07/29 Result := Trim(QrSearch.FieldByName(KeyField).AsString);
      Result:= VarToStr(finalresult);   // Amin 1391/07/29

      if Result <> '' then
      begin
        QrSearch.Close;
        QrSearch.SQL.Text := SqlText;
        QrSearch.Open;
        QrSearch.Locate(KeyField,Result,[]);
      end;
    end
    else
    begin
      Result := '0';
      QrSearch.Close;
      QrSearch.SQL.Text := SqlText;
      QrSearch.Open;
    end;

  except on E:Exception do
        Showmessage(E.Message);
  end;
end;

procedure TFmSearch.EditSearchChange(Sender: TObject);
Var
   P:integer;
   TempStr,s:String;
   fieldName: string; // Amin 1391/07/29
begin
  if Trim(EditSearch.Text)<>'' then
  begin
    s:=EditSearch.Text;
    s:=Dm.ReplaceCharacter(EditSearch.Text,char(223),char(152));
    if (DBGridSearch.DataSource.DataSet is TADOQuery) then
    begin
      fieldName:= DBGridSearch.SelectedField.FieldName ;// Amin 1391/07/29
      (DBGridSearch.DataSource.DataSet as TADOQuery).SQL.Text := FmSearch.GlobalSqlText;
      TempStr := FmSearch.GlobalSqlText ;
      P := POs('WHERE ',UpperCase(GlobalSqlText));
      if P > 0 then
      begin
        try
          (DBGridSearch.DataSource.DataSet as TADOQuery).Close;
          // Amin 1391/07/29  insert( ' replace('+DBGridSearch.SelectedField.FieldName+',char(223),char(152)) Like ''%'+s+'%'''+' And ', TempStr , P+6);
          insert( ' replace('+FieldName+',char(223),char(152)) Like ''%'+s+'%'''+' And ', TempStr , P+6);// Amin 1391/07/29
          (DBGridSearch.DataSource.DataSet as TADOQuery).SQL.text := TempStr;
          (DBGridSearch.DataSource.DataSet as TADOQuery).Open;

          if (DSSearch.DataSet.Name='QrSrchPhone') then
            FmPhone.PhoneID:=DSSearch.DataSet.FieldByName('PhoneID').AsInteger;
        except

        end;
      end
      else
        ShowMessage('Not Found => "Where (1=1)"');
       end;
    end
    else
    begin
      (DBGridSearch.DataSource.DataSet as TADOQuery).Close;
      (DBGridSearch.DataSource.DataSet as TADOQuery).SQL.text := GlobalSqlText;
      (DBGridSearch.DataSource.DataSet as TADOQuery).Open;
    end;
end;

procedure TFmSearch.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
   I:integer;
begin
  if Key = Vk_F2 then
    BitBtn1.Click;
   //
  if Key in [Vk_F5 , Vk_F6] then
  begin
    if (DBGridSearch.SelectedIndex < DBGridSearch.Columns.Count-1)then
    begin
      for I:=0 to DBGridSearch.Columns.Count-1 do
        if DBGridSearch.SelectedIndex = I then
        begin
          DBGridSearch.Columns.Items[I].Color := DBGridSearch.Color;
          if Key=Vk_F5 then
            DBGridSearch.SelectedIndex := DBGridSearch.SelectedIndex + 1;

          if Key=Vk_F6 then
            DBGridSearch.SelectedIndex := DBGridSearch.SelectedIndex - 1;

          DBGridSearch.Columns.Items[DBGridSearch.SelectedIndex].Color := Col_Color;
          LabelDisplayName.Caption := Trim(DBGridSearch.Columns.Items[DBGridSearch.SelectedIndex].Title.caption);
          EditSearch.SetFocus;
          Break;
        end
        else
          DBGridSearch.Columns.Items[I].Color := DBGridSearch.Color;
    end
    else
    begin
      DBGridSearch.Columns.Items[DBGridSearch.Columns.Count-1].Color := DBGridSearch.Color;
      if Key=Vk_F5 then
        DBGridSearch.SelectedIndex := 0;

      if Key=Vk_F6 then
        DBGridSearch.SelectedIndex := DBGridSearch.SelectedIndex - 1;

      DBGridSearch.Columns.Items[DBGridSearch.SelectedIndex].Color := Col_Color;
      LabelDisplayName.Caption := Trim(DBGridSearch.Columns.Items[DBGridSearch.SelectedIndex].Title.caption);
      EditSearch.SetFocus;
    end;
  end;
   //
  if ssctrl in Shift then
    Case Key of
      VK_NEXT  : DBGridSearch.DataSource.DataSet.Next;
      VK_PRIOR : DBGridSearch.DataSource.DataSet.Prior;
      VK_Home  : DBGridSearch.DataSource.DataSet.First;
      VK_END   : DBGridSearch.DataSource.DataSet.Last;
    end;

  Case Key of
    Vk_Down : DBGridSearch.DataSource.DataSet.Next;
    Vk_Up   : DBGridSearch.DataSource.DataSet.Prior;
  end;
end;

procedure TFmSearch.DBGridSearchTitleClick(Column: TColumn);
Var
   I:integer;
begin
  for I:=0 to DBGridSearch.Columns.Count-1 do
    DBGridSearch.Columns.Items[I].Color := DBGridSearch.Color;

  DBGridSearch.SelectedIndex := Column.Index;
  DBGridSearch.Columns.Items[Column.Index].Color := Col_Color;
  LabelDisplayName.Caption := Trim(DBGridSearch.Columns.Items[Column.Index].Title.caption);
  EditSearch.SetFocus;
end;

procedure TFmSearch.FormShow(Sender: TObject);
begin
  inherited;
  EditSearch.SetFocus;
  if Length(Trim(EditSearch.Text))=1 then
    EditSearch.SelStart :=1;
   //Form_Animate(Self,100);
end;

procedure TFmSearch.DBGridSearchDblClick(Sender: TObject);
begin
  if (DSSearch.DataSet.Name='QrSrchPhone') then
    FmPhone.PhoneID:=DSSearch.DataSet.FieldByName('PhoneID').AsInteger;

   // Amin 1391/07/29 Start
  if (DSSearch.DataSet is TADOQuery) and ((DSSearch.DataSet as TADOQuery).RecordCount > 0) then
  begin
    finalresult:= (DSSearch.DataSet as TADOQuery).FieldValues[_keyField];
  end;
   // Amin 1391/07/29 End
  ModalResult:=mrOk;
end;

procedure TFmSearch.DBGridSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_PRIOR , VK_NEXT] then
    Key := 0;

  if ssCtrl in Shift then
    if Key in [Vk_Home,Vk_End,Vk_Delete] then
      Key := 0;

  if Shift = [] then
    if Key in [Vk_Insert] then
      Key := 0;
end;

procedure TFmSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DSSearch.DataSet.Close;
end;

procedure TFmSearch.BitBtn1Click(Sender: TObject);
begin
  DBGridSearchDblClick(Application);
end;

initialization
   RegisterClass(TFmSearch);
end.



