unit Import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ComCtrls, ExtActns, ActnList, DB, ExtCtrls,
  ADODB, DBTables, Grids, DBGrids,AdoConEd, YDbgrid, xpWindow, Menus,
  TntDialogs, AppEvnts, AdvGlowButton;

type
  TFrImport = class(TMBaseForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    AccessConection: TADOConnection;
    AccessOpenDialog: TOpenDialog;
    AccessTable: TADOTable;
    BDETable: TTable;
    FoxOpenDialogT: TOpenDialog;
    DSQLTable: TDataSource;
    DOtherTable: TDataSource;
    DAccessTable: TDataSource;
    DBDETable: TDataSource;
    DataSource5: TDataSource;
    SQLTable: TADOTable;
    SQLConnection: TADOConnection;
    OtherTable: TADOTable;
    OtherConnection: TADOConnection;
    ReCreate: TCheckBox;
    Label2: TLabel;
    Button7: TAdvGlowButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    Label4: TLabel;
    Button3: TAdvGlowButton;
    AccessCombo: TComboBox;
    DBGrid2: TDBGrid;
    TabSheet6: TTabSheet;
    Label5: TLabel;
    Button4: TAdvGlowButton;
    CBinvert: TCheckBox;
    CP: TComboBox;
    cbinvertall: TCheckBox;
    DBGrid1: TDBGrid;
    TabSheet7: TTabSheet;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBGrid3: TDBGrid;
    ServerName: TEdit;
    Button6: TAdvGlowButton;
    DatabseName: TEdit;
    SQLCombo: TComboBox;
    TabSheet8: TTabSheet;
    Label7: TLabel;
    DBGrid4: TDBGrid;
    Button5: TAdvGlowButton;
    otherCombo: TComboBox;
    RadioGroup1: TRadioGroup;
    YeganehTable: TADOTable;
    ProgressBar1: TProgressBar;
    Edit1: TEdit;
    DYeganehTable: TDataSource;
    dbgYeganeh: TDBGrid;
    Label3: TLabel;
    YDBGrid1: TYDBGrid;
    sp_CompleteFieldBook: TADOStoredProc;
    Fields: TADODataSet;
    FoxOpenDialog: TTntOpenDialog;
    Panel1: TPanel;
    Button2: TAdvGlowButton;
    Button1: TAdvGlowButton;
    Button8: TAdvGlowButton;
    pnlMain: TPanel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SQLComboClick(Sender: TObject);
    procedure AccessComboClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure otherComboClick(Sender: TObject);
    procedure RefreshYeganehTable;
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure CompleteFields;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FieldsAfterInsert(DataSet: TDataSet);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrImport: TFrImport;

implementation

uses Dmu, CodePage, UMain;

{$R *.dfm}
var tbname:string;
procedure TFrImport.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex:=RadioGroup1.ItemIndex;
end;

procedure TFrImport.Button3Click(Sender: TObject);
begin
  inherited;
if AccessOpenDialog.Execute then
 begin
  AccessConection.Connected:=false;
  AccessConection.ConnectionString:=' Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
  AccessOpenDialog.Filename+';Persist Security Info=False';
  AccessConection.Open;
  AccessConection.GetTableNames(AccessCombo.Items);
  AccessCombo.ItemIndex:=0;
  AccessCombo.OnClick(AccessCombo);
 end;
end;


procedure TFrImport.Button4Click(Sender: TObject);
var
   i : integer;
begin
  inherited;
if FoxOpenDialog.Execute then
 begin
  BDETable.Close;
  if FileExists(_ApplicationPath+'tmpFile')then
  begin
    SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpFile'), false);
    DeleteFile(pchar(_ApplicationPath+'tmpFile'));
  end;
  if CopyFileW(dm.replacePWC(dm.StringToPWide(FoxOpenDialog.filename,i)), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
  begin
         BDETable.DatabaseName:=ExtractFilePath(_ApplicationPath+'tmpFile');
         BDETable.TableName:=ExtractFileName(_ApplicationPath+'tmpFile');
         BDETable.Open;
  end
  else if CopyFileW(dm.StringToPWide(FoxOpenDialog.filename,i), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
  begin
         BDETable.DatabaseName:=ExtractFilePath(_ApplicationPath+'tmpFile');
         BDETable.TableName:=ExtractFileName(_ApplicationPath+'tmpFile');
         BDETable.Open;
  end
  else
         ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');

 end;

end;

procedure TFrImport.Button6Click(Sender: TObject);
begin
  inherited;
with SQLConnection do
 begin
   Connected:=false;
   ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog='+
    DatabseName.Text+';Data Source='+ServerName.Text;
    Connected:=true;
    GetTableNames(SQLCombo.Items);
    SQLCombo.ItemIndex:=0;
    SQLCombo.OnClick(SQLCombo);
 end;
end;

procedure TFrImport.SQLComboClick(Sender: TObject);
begin
  inherited;
 SqlTable.Close;
 sqlTable.TableName:='['+SQLCombo.Text+']';
 SqlTable.Open;
end;


function SQLDrop(TableName:string):string;
begin
 Result:=
 ' if exists (select * from dbo.sysobjects where id = object_id(N'+QuotedStr(TableName)+
 ') and OBJECTPROPERTY(id, N''IsUserTable'') = 1) '+
 'drop table '+TableName;



end;
function SQLCreate(OldTable:TDataset;NewTable:String):string;
 var i:byte;
 size,FieldType:string;
begin

Result:=' if not exists (select * from dbo.sysobjects where id = object_id(N'+QuotedStr(NewTable)+
 ') and OBJECTPROPERTY(id, N''IsUserTable'') = 1) CREATE TABLE '+NewTable+ #13+'(';

with OldTable do
 for i:=0 to Fields.Count-1 do
  begin
   if Fields[i].ClassNameIs('TDateField') then FieldType:='datetime';
   if Fields[i].ClassNameIs('TDateTimeField') then FieldType:='datetime';
   if Fields[i].ClassNameIs('TSmallIntField') then FieldType:='int';
   if Fields[i].ClassNameIs('TFloatField') then FieldType:='float';
   if Fields[i].ClassNameIs('TStringField') then FieldType:='varchar';
   if Fields[i].ClassNameIs('TGraphicField') then FieldType:='image';
   if Fields[i].ClassNameIs('TTimeField') then FieldType:='datetime';
   if Fields[i].ClassNameIs('TVarBytesField') then FieldType:='varbinary';
   if Fields[i].ClassNameIs('TWideStringField') then FieldType:='varchar';
   if Fields[i].ClassNameIs('TBinaryField') then FieldType:='binary';
   if Fields[i].ClassNameIs('TBlobField') then FieldType:='image';
   if Fields[i].ClassNameIs('TBooleanField') then FieldType:='bit';
   if Fields[i].ClassNameIs('TIntegerField') then FieldType:='int';
   if Fields[i].ClassNameIs('TBytesField') then FieldType:='binary';
   if Fields[i].ClassNameIs('TWordField') then FieldType:='int';
   if Fields[i].ClassNameIs('TAutoIncField') then FieldType:='int';
   if Fields[i].ClassNameIs('TCurrencyField') then FieldType:='money';
   if Fields[i].ClassNameIs('TLargeintField') then FieldType:='bigint';
   if Fields[i].ClassNameIs('TMemoField') then FieldType:='text';

   size:='';
   if (pos('var',fieldtype)<>0) or (FieldType='binary') then
     if FieldType='varchar' then
       size:='('+IntToStr(Fields[i].Size)+')'
      else
       size:='(50)';
     if FieldType='text' then
       begin
        FieldType :='varchar';
        size:='(8000)';
       end;

     Result:=Result+'['+Fields[i].FieldName+'] '+ FieldType+size+' null,'#13;

  end;
   Result:=Result+') ON [PRIMARY]';
end;


procedure TFrImport.AccessComboClick(Sender: TObject);
begin
  inherited;
 AccessTable.Close;
 AccessTable.TableName:='['+AccessCombo.Text+']';
 AccessTable.Open;

end;

procedure TFrImport.Button5Click(Sender: TObject);
begin
  inherited;
  OtherConnection.Connected:=false;
 if EditConnectionString(OtherConnection) then
    begin
     OtherConnection.Connected:=true;
     OtherConnection.GetTableNames(otherCombo.Items);
     otherCombo.ItemIndex:=0;
     otherCombo.OnClick(otherCombo)
    end;

end;

procedure TFrImport.otherComboClick(Sender: TObject);
begin
  inherited;
 otherTable.Close;
 otherTable.TableName:='['+otherCombo.Text+']';
 otherTable.Open;
end;

procedure TFrImport.RefreshYeganehTable;
begin
  try
   with YeganehTable do
    begin
     Close;
     TableName:=tbname;
     Open;
    end;
  except
 end;
end;


procedure TFrImport.Button7Click(Sender: TObject);
 var j: integer;
 OldTb :TADOTable;
begin
  inherited;
if Edit1.Text='' then
  begin
   messageShowString('·ÿ›« ‰«„ ›«—”Ì ÃœÊ· —« Ê«—œ ﬂ‰Ìœ',false);
   exit;
  end;
  dbgYeganeh.DataSource := nil;

case RadioGroup1.ItemIndex of
 0: OldTb := AccessTable;
 2: OldTb := SQLTable;
 else
  OldTb := OtherTable;
end;
     if ReCreate.Checked then
         dm.ExecCommand(SQLDrop(tbname));

 if RadioGroup1.ItemIndex<>1 then
   begin
      dm.ExecCommand(SQLCreate(OldTb,tbname));
      RefreshYeganehTable;
      with YeganehTable do
      begin
        while not OldTb.Eof do
         begin
          Insert;
          for j:=0 to Fields.Count-1 do
           Fields[j].Value:=OldTb.Fields[j].Value;
          post ;
          OldTb.Next;
          ProgressBar1.Position:=ProgressBar1.Position+1;
          application.ProcessMessages;
         end ;
       end;
 end
else
 begin
      dm.ExecCommand(SQLCreate(BDETable,tbname));
      with YeganehTable do
       begin
         RefreshYeganehTable;
        while not BDETable.Eof do
         begin
          Insert;
          for j:=0 to Fields.Count-1 do
           if Fields[j].ClassNameIs('TStringField') then
            Fields[j].AsString:=ConvertToMicrosoft(BDETable.Fields[j].AsString,TCPOrder(CP.ItemIndex),cbinvert.Checked,cbinvertall.Checked)


           else
            Fields[j].Value:=BDETable.Fields[j].Value;
          post ;
          BDETable.Next;
          ProgressBar1.Position:=ProgressBar1.Position+1;
          application.ProcessMessages;
         end ;
       end;
 end;
 dbgYeganeh.DataSource := DYeganehTable;
 messageShowString('›—«ŒÊ«‰Ì »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',false);
ProgressBar1.Position:=0;
CompleteFields;
end;

procedure TFrImport.FormCreate(Sender: TObject);
begin
  inherited;
 with dm,Tables do
   if not Active then Open;
end;

procedure TFrImport.TabSheet2Show(Sender: TObject);
begin
  inherited;
case RadioGroup1.ItemIndex of
 0: begin ProgressBar1.Max:=AccessTable.RecordCount;tbname:=AccessTable.tablename; end;
 1: begin
     ProgressBar1.Max:=BDETable.RecordCount;
     tbname:= copy(BDETable.TableName,1,pos('.',BDETable.TableName)-1);
    end;
 2: begin ProgressBar1.Max:=SQLTable.RecordCount;tbname:= SQLTable.TableName;   end;
 3: begin ProgressBar1.Max:=OtherTable.RecordCount;tbname:= OtherTable.TableName;  end;
end;


{y  dm.GetQuery('select description from tables where tablename='''+tbname+'''');
if dm.Command.RecordCount<>0 then
    edit1.Text:=dm.Command.Fields[0].AsString; }
  RefreshYeganehTable;
end;

procedure TFrImport.CompleteFields;
 var tableid : integer;
begin
  inherited;
 with sp_CompleteFieldBook do
  begin
   Parameters.ParamByName('@tablename').Value:=tbname;
   Parameters.ParamByName('@Description').Value:=Edit1.Text;
   ExecProc;
   tableid:=Parameters.ParamByname('@tableid').Value;
end;

  with Fields do
   begin
    Close;
    Parameters.ParamByName('@tableid').Value:=tableid;
    Open;
   end;
end;

procedure TFrImport.Button1Click(Sender: TObject);
begin
  inherited;
 if PageControl1.ActivePageIndex<>4 then
  PageControl1.SelectNextPage(true);
end;

procedure TFrImport.Button2Click(Sender: TObject);
begin
  inherited;
 if PageControl1.ActivePageIndex<>0 then
  PageControl1.SelectNextPage(false);

end;

procedure TFrImport.FieldsAfterInsert(DataSet: TDataSet);
begin
  inherited;
abort;
end;

procedure TFrImport.Button8Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrImport.FormShow(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex:=RadioGroup1.ItemIndex;
end;

end.

