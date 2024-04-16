unit YGridPanel;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls, CheckLst,DB,ADODB;

type
  TEventIfChecked=procedure (ID:integer) of object;
  TItemChecked=procedure (ID:integer;var checked:boolean) of object;
  TClearInDb=procedure  of object;



 TYGridPanel = class(TPanel)
//proc
  private
    { Private declarations }
    FYdataset : TDataSet;
    FTitleField, FIDField :string;
    FOnChecked : TEventIfChecked;
    FOnNeedCheck : TItemChecked;
    FClearInDb: TClearInDb;

  protected
    { Protected declarations }
  public
   codes : array[0..255] of integer;
   procedure Fill;
   procedure Post;
   function SelectedCodes:string;
   function SelectedTitles:string;

    { Public declarations }
    constructor Create(aowner:tcomponent);override;

  published
    { Published declarations }
    property Ydataset: TDataSet read FYdataset write FYDataSet;
    property TitleField: string read FTitleField write FTitleField;
    property IDField: string read FIDField write FIDField;
    property OnChecked:TEventIfChecked read FOnChecked write FOnChecked;
    property OnNeedCheck:TItemChecked read FOnNeedCheck write FOnNeedCheck;
    property ClearInDb:TClearInDb read FClearInDb write FClearInDb;
  end;

procedure Register;

implementation
procedure Register;
begin
  RegisterComponents('Yeganeh', [TYGridPanel]);
end;

constructor TYGridPanel.Create(aowner:tcomponent);
 begin
  inherited Create(aowner);

 end;

procedure TYGridPanel.Fill;
  var i: byte;
check:boolean;
 begin
  Self.Clear;
   i:=0;
 with Ydataset do
  begin
   if Ydataset.InheritsFrom(TADODataSet) then
    TADODataSet(Ydataset).Sort:=IDField;
   if not Active then Open;
   First;
   while not Eof do
    begin
     Items.Add(FieldByname(TitleField).AsString);
     codes[i]:=FieldByname(IDField).AsInteger;
     if Assigned(FOnNeedCheck) then
      begin
       FOnNeedCheck(codes[i],check);
       Checked[i]:=check;
      end;
     inc(i);
     Next;
    end;
 end;
end;

procedure TYGridPanel.Post;
  var i: byte;
 begin
  if Count=0 then exit;
  if not Assigned(FOnChecked) then exit;

  if Assigned(FClearInDb) then
   FClearInDb;

   for i:=0 to Count-1 do
      if Checked[i] then
        FOnChecked(codes[i]);
   Fill;
 end;
 function TYGridPanel.SelectedCodes:string;
  var i: byte;
  begin
  Result:='';
   for i:=0 to Count-1 do
      if Checked[i] then
        Result:=Result+','+IntToStr(Codes[i]);
        if Result<>'' then Delete(Result,1,1);
  end;

 function TYGridPanel.SelectedTitles:string;
  var i: byte;
  begin
  Result:='';
   for i:=0 to Count-1 do
      if Checked[i] then
        Result:=Result+' , '+Items[i];
        if Result<>'' then Delete(Result,1,3);
  end;
end.
