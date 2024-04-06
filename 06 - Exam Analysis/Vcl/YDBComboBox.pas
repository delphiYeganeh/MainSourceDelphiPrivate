unit YDBComboBox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls,db;

type
  TYDBComboBox = class(TComboBox)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    KeyValues :TStrings;
    constructor create(aowner:tcomponent);override;
    Procedure FillItems(D:TDataSet;CodeField,TitleField:string);
    Procedure SetKeyValue(keyvalue: string);
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYDBComboBox]);
end;

constructor TYDBComboBox.create(aowner:tcomponent);
 begin
  inherited create(aowner);
keyvalues:=TStringList.Create;
 end;
Procedure  TYDBComboBox.FillItems(D:TDataSet;CodeField,TitleField:string);
 begin

    if d.Active then
    with d do
     begin
      first;
      KeyValues.Clear;
      Items.Clear;
      while not eof do
       begin
         KeyValues.Add(FieldByName(CodeField).AsString);
         Items.Add(FieldByName(TitleField).AsString);
         next;
       end;
     end;
 end;

Procedure TYDBComboBox.SetKeyValue(keyvalue: string);
var i: byte;
begin
 ItemIndex:=-1;
 if Items.Count>0 then
  for i:=0 to Items.Count-1 do
   if  KeyValues[i]=keyvalue then
      ItemIndex:=i;
end;
end.
