unit YINtegerField;

interface

uses
  dialogs,SysUtils, Classes, DB;

type
  TYIntegerField = class(TintegerField)
  private
   procedure FYSetText(Sender: TField; const Text: String);
   procedure FYGetText(Sender: TField; var Text: String;  DisplayText: Boolean);
   { Private declarations }
  protected
    { Protected declarations }
  public
 constructor create(aowner:tcomponent);override;

     { Public declarations }
  published
    { Published declarations }
  end;
procedure Register;


implementation

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYINtegerField]);
end;

Function DeleteComma(S:String):String;    //860913 m
Begin
While Pos(',',S)>0 Do
  Delete(S,Pos(',',S),1);
Result := S;
End;

function CommaSeperate(s:string):string; //860613m
Var
  S1:String;
   I:Integer;
   Slist:TStringList;
   Label EndMenu;
begin
 SList := TStringList.Create;
 While Pos(',',S)>0 Do Delete(S,Pos(',',S),1);
 For I:=Length(S) DownTo 1 Do
  IF Length(S)>3 Then
   Begin
     S1 := Copy(S,Length(S)-2,3);
     Slist.Add(S1);
     Delete(S,Length(S)-2,3);
   End;
 IF Length(S)>0 Then
    Slist.Add(S);
 S := '';
 For I := Slist.Count-1 DownTo 0 Do
 Begin
  S1 := Slist.Strings[I];
  S := S + S1 + ',' ;
 End;
 Delete(S,Length(S),1);
 Result:=s;
 end ;

constructor TYIntegerField.create(aowner:tcomponent);
 begin
  inherited create(aowner);
  OnSetText:=FySetText;
  OnGetText:=FYGetText;
end;

procedure TYIntegerField.FYSetText(Sender: TField; const Text: String);
begin
IF (Text<>'') Then
try   Sender.AsInteger := StrToInt( DeleteComma(Text)) except end ;
end;

procedure TYIntegerField.FYGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if TField(sender).AsString<>'' then
     text:=CommaSeperate(TField(sender).AsString);
end;

end.
