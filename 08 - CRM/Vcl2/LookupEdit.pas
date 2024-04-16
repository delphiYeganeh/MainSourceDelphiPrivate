unit LookupEdit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls,adodb,db,windows,dialogs;

type
  TNewText=procedure (sender :Tobject ;Title:string) of object;

  TLookupEdit = class(TEdit)
  private
    { Private declarations }
    FOnNewText: TNewText;
    FListTable,
    FCodeField,
    FDataField,
    FCodeField2,
    FStatusField,
    FTitleField:string;
    FConnection:TADOConnection;
    FKeyValue : integer;
    FKeyValue2: string;
    FDataSet:TDataSet;
    procedure SetKeyValue(value: integer);
    function GetQuery(s:string):Variant;
    procedure LookupEditChange(Sender: TObject);
    procedure LookupEditExit(Sender: TObject);
    procedure LookupEditEnter(Sender: TObject);
    procedure LookupEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  protected

    { Protected declarations }
  public
    isDbg:boolean;
    isnew: boolean;
    { Public declarations }
  procedure  insertnew;
  constructor Create(aowner:tcomponent);override;
  published
    { Published declarations }
    property  ListTable   : string         read  FListTable   write  FListTable;
    property  CodeField   : string         read  FCodeField   write  FCodeField;
    property  CodeField2   : string        read  FCodeField2   write  FCodeField2;
    property  StatusField   : string       read  FStatusField   write  FStatusField;
    property  TitleField  : string         read  FTitleField  write  FTitleField;
    property  DataField   : string         read  FDataField   write  FDataField;
    property  Connection  : TADOConnection read  FConnection  write  FConnection;
    property  KeyValue    : integer        read  FKeyValue    write  SetKeyValue;
    property  KeyValue2    : string        read  FKeyValue2    write  FKeyValue2;
    property  DataSet     : TDataSet       read  FDataSet     write  FDataSet;
    property  OnNewText   : TNewText       read FOnNewText write FOnNewText;

  end;

procedure Register;

implementation

uses Fgrid, Math;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TLookupEdit]);
end;


function TLookupEdit.GetQuery(s:string):Variant;
var command : TADODataSet;
begin
 command:=TADODataSet.Create(self);
 command.Connection:=Connection;
  with command do
   begin
    close;
    CommandText:=s;
    open;
    Result:=Fields[0].AsVariant;
   end;
end;

procedure TLookupEdit.SetKeyValue(value: integer);
 begin
   if  FKeyValue<>value then
    begin
     FKeyValue:=value;
     if not isDbg then
      Text:=GetQuery('select '+TitleField + ' from '+ListTable+' where '+CodeField+
           ' = '+ IntToStr(value));
    if Assigned(DataSet) then
    if DataSet.State in [dsedit,dsinsert] then
      DataSet.FieldByName(DataField).AsInteger:=value;
    end;
 end;

function YeganehTrim(s:string):string;
var i: word;
begin
s:=trim(s);
  i:=pos('  ',s);
  while i<>0 do
    begin
      s:=copy(s,1,i)+copy(s,i+2
      ,length(s)-i-1);
      i:=pos('  ',s)
    end;
  Result:=s;
end;

constructor TLookupEdit.Create(aowner:tcomponent);
 begin
  inherited Create(aowner);
   isDbg:=False;
  CodeField:='Code';
  TitleField:='Title';
  OnKeyDown:=LookupEditKeyDown;
  OnExit:=LookupEditExit;
  OnEnter:=LookupEditEnter;
 end;
procedure TLookupEdit.LookupEditChange(Sender: TObject);
var s:string;
begin
  inherited;
  if  isDbg then exit;
  If Assigned(DataSet) then
 if not (DataSet.State in [dsedit,dsinsert] ) then
   exit;
   
   s:=YeganehTrim(Text);
 with Grid.query do
 if length(s)>=1  then
  begin
    Close;
    CommandText:='select '+codefield+' code,'+TitleField + ' title  ';
    if FCodeField2<>'' then
       CommandText:=CommandText+','+CodeField2 +' as Code2 ';
    if FStatusField<>'' then
       CommandText:=CommandText+','+FStatusField +' as status ';
     CommandText:=CommandText+' from '+ListTable+' where '+titleField+' like '''+ s+'%''';
    open;
     with grid do
    if not Visible then
      begin
       Grid.Show;
       DBGrid.Columns[1].Visible:=CodeField2<>'';
       If DBGrid.Columns[1].Visible then
        begin
         DBGrid.Columns[0].Width:=DBGrid.Width*2 div 3;
         DBGrid.Columns[1].Width:=DBGrid.Width div 3;
        end
      else
         DBGrid.Columns[0].Width:=DBGrid.Width;
      end;
     SetFocus;
  end;


end;

procedure TLookupEdit.LookupEditExit(Sender: TObject);
begin
  inherited;
if not Grid.DBGrid.Focused then
 begin
   if  grid.query.active then
   If (Grid.query.RecordCount=0) or (Grid.query.FieldByName('title').AsString<>text) then
      begin
      if Assigned(FOnNewText) then
        FOnNewText(self,text);
        IsNew:=true;
      end
    else
   begin
    isDbg:=true;
    keyvalue:=Grid.query.FieldByName('code').AsInteger;
    isDbg:=false;
  end;
   Grid.Close;
 end;

end;

procedure TLookupEdit.LookupEditEnter(Sender: TObject);
begin
  inherited;
 Grid:=TGrid.Create(self);
 OnChange:=LookupEditChange;
 Grid.Top:=self.ClientOrigin.Y+Height;
 Grid.Left:=ClientOrigin.X-2;
 Grid.ylookup:=self;
 Grid.query.Connection:=Connection;
 Grid.Width:=Width;
end;

procedure TLookupEdit.LookupEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_down) or (key=vk_up) then
  begin
   Grid.Show;
   Grid.DBGrid.SetFocus;
 end;

end;

procedure  TLookupEdit.insertnew;
 var command : TADOCommand;
  newid: integer;
begin
 command:=TADOCommand.Create(self);
 command.Connection:=Connection;
  with command do
   begin
    CommandText:='insert into '+ListTable+'('+TitleField+') values ('''+Text+''')';
    Execute;
    newid:=GetQuery(' select isnull(max('+CodeField + '),0) from '+ListTable);
    isDbg:=true;
    KeyValue:=newid;
    isDbg:=false;
   end;


  end;


end.


