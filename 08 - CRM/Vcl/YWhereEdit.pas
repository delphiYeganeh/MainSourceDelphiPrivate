unit YWhereEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls,ADODB,dialogs,YShamsiDate;

type
  TYWhereEdit = class(TEdit)
  private
    FFieldName,
    FTableName,
    FListTable,
    FCodeField,
    FDescription,
    FTitleField:string;
    FIsString  ,
    FIsLike    ,
    FisDate  ,
    FisInteger  ,
    FEveryLike   : boolean;
     FToValue:string;
     FSinceValue:string;
    FConnection:TADOConnection;
    { Private declarations }
    Procedure SetisInteger(value:boolean);
    Procedure SetIsDate(value:boolean);
    Procedure SetIsLike(value:boolean);
    Procedure Calculate_Since_and_To_Values(var s,t:string);
    Function GetToValue:string;
    Function GetSinceValue:string;


  protected
    { Protected declarations }
  public
    { Public declarations }
   function Resultwhere:string;
    property  ToValue      : string        read  GetToValue       write  FToValue;
    property  SinceValue      : string        read  GetSinceValue    write  FSinceValue;
    constructor Create(aowner:tcomponent);override;

  published
    property  isLike      : boolean        read  FIsLike       write  SetIsLike;
    property  isDate      : boolean        read  FisDate       write  SetIsDate;
    property  isInteger   : boolean        read  FisInteger    write  SetisInteger;
    property  EveryLike   : boolean        read  FEveryLike    write  FEveryLike;
    property  isString    : boolean        read  FIsString     write  FIsString;
    property  FieldName   : string         read  FFieldName    write  FFieldName;
    property  TableName   : string         read  FTableName    write  FTableName;
    property  ListTable   : string         read  FListTable    write  FListTable;
    property  CodeField   : string         read  FCodeField    write  FCodeField;
    property  TitleField  : string         read  FTitleField   write  FTitleField;
    property  Description : string         read  FDescription  write  FDescription;
    property  Connection  : TADOConnection read  FConnection   write  FConnection;
    { Published declarations }
  end;

procedure Register;

implementation

uses  ADOInt;
procedure Register;
begin
  RegisterComponents('Yeganeh', [TYWhereEdit]);
end;
function YeganehTrim(s:string):string;
var i: word;
begin
s:=trim(s);
  i:=pos('  ',s);
  while i<>0 do
    begin
      s:=copy(s,1,i)+copy(s,i+2,length(s)-i-1);
      i:=pos('  ',s)
    end;
  Result:=s;
end;

function MemoCondition(MemoText:string;FName:string):String;
var  memoItems:TStrings;
i:byte;
begin
MemoText:=yeganehtrim(ReplaceKaf(MemoText));
 if length(MemoText)>2 then
  if (MemoText[1]='"') and (MemoText[length(MemoText)]='"') then
   begin
    Result:='('+FName+' like ''%'+copy(MemoText,2,length(MemoText)-2)+'%'')';
    exit;
   end;
 memoItemS:=TStringList.Create;
 Setwords(MemoText,#32,memoItems);
 Result:='';
 if memoItems.Count>0 then
 for i:=0 to memoItems.Count-1 do
   if Result<>'' then
    result:=result+' and '+FName+' like ''%'+memoItems[i]+'%'''
   else
    result:=' '+FName+' like ''%'+memoItems[i]+'%''';

if Result<>'' then result:='('+result+')';
end;


Procedure TYWhereEdit.SetIsInteger(value:boolean);
 begin
  FisInteger:=value;
 end;


Procedure TYWhereEdit.SetIsDate(value:boolean);
 begin
  FisDate:=value;
  if value then
   begin
    isString:=true;
    isLike:=false;
    EveryLike:=false;
   end;
 end;

Function TYWhereEdit.GetToValue:string;
 begin
   Calculate_Since_and_To_Values(FSincevalue,FToValue);
   Result:=FToValue;
 end;
Function TYWhereEdit.GetSinceValue:string;
 begin
   Calculate_Since_and_To_Values(FSincevalue,FToValue);
   Result:=FSinceValue;
 end;

Procedure TYWhereEdit.SetIsLike(value:boolean);
 begin
  FIsLike:=value;
  if not value then
    BiDiMode:=bdLeftToRight;
 end;

 function NumberofSlash(s: string):byte;
  var i: byte;
  begin
   Result:=0;
    for i:=1 to length(s) do
     if s[i]='/' then
      inc(Result);
  end;
 Procedure TYWhereEdit.Calculate_Since_and_To_Values(var s,t:string);
   var  p:byte;
    txt:string;
  begin
    txt:=trim(text);
    p:=pos('-',txt);
  if p<>0 then
   begin
    s:=copy(txt,1,p-1);
    t:=copy(txt,p+1,length(txt)-p);
    if isDate then
     begin
       if s='' then s:='1300/01/01';
       if t='' then t:='1400/12/30';

       case NumberofSlash(t) of
         0:  t:=t+'/12/29';
         1:  t:=t+'/29';
       end;
       case NumberofSlash(s) of
        0: s:=s+'/01/01';
        1: s:=s+'/01';
        end;

        isValidDate(s);
        isValidDate(t);
        if StrToInt(copy(t,6,2))<7 then t:=copy(t,1,8)+'31' else
        if StrToInt(copy(t,6,2))<12 then t:=copy(t,1,8)+'30' ;
     end{ if isDate}
   end {if p<>0}
  else
   begin
    if txt='' then
     begin
      s:='1300/01/01';
      t:='1400/12/30';
      exit;
     end;
    s:=txt;
    t:=txt;
    if isDate then
     begin
      case NumberofSlash(s) of
        0: begin
            s:=s+'/1/1';
            isValidDate(s);
            s:=copy(s,1,5)+'01/01';
            t:=copy(s,1,5)+'12/30';
           end;
        1: begin
            s:=s+'/1';
            isValidDate(s);
            s:=copy(s,1,8)+'01';
            t:=copy(s,1,8)+'31';
           end;
        2: begin
            isValidDate(s);
            t:=s;
           end;
      end;{case}
     end;{isdate}
   end;{else}
end;

function TYWhereEdit.ResultWhere:string;
var items: TStrings;
 i: integer;
FName:string;
neg:boolean;

function FromTo(w:String):string;
   var f,t:string;
begin
 Result:='';

 if FIsLike then
  begin
   Result:=FName+' like '+ReplaceKaf(QuotedStr(w+'%'));
   exit;
  end;

 if isDate then
  begin
   Result:='('+FName+' between '+QuotedStr(SinceValue)+' and '+QuotedStr(ToValue)+')';
   exit;
  end;

 if (pos('-',w)<>0) then
  begin
   f:=SinceValue;
   T:=ToValue;

   if FIsString then
    begin
     f:=QuotedStr(f);
     t:=QuotedStr(t);
    end;

   if f<>'' then
    Result:='('+FName+'>='+f+')';
   if (t<>'') then
    begin
     if Result<>'' then
      Result:=Result+ ' and ('+FName+'<='+t+')'
     else
      Result:='('+FName+'<='+t+')';
    end;
    exit;
   end;


 if FIsString then
  w:=QuotedStr(w);

 Result:='('+FName +'='+w+')';
end;

begin
   neg:=false;

Result:='';
 if trim(Text)='' then exit;
 if text[1]='!' then
  begin
   neg:=true;
   text:=copy(Text,2,length(Text)-1);
  end;


     if TableName<>'' then
        FName:=TableName+'.'+FieldName+''
       else
        FName:=FieldName;

 items:=TStringList.Create;
 Result:='';

 if EveryLike then
   begin
     Result:=MemoCondition(Text,FName);
     Exit;
   end;

  if isLike then
   begin
    Result:=FromTo(Text);
    Exit;
   end;

 if pos(',',Text)<>0 then
  SetWords(Text,',',items)
 else
  SetWords(Text,'æ',items) ;

 for i:=0 to items.Count-1 do
  begin
   if FromTo(items[i])<>'' then
     if Result<>'' then
      Result:=Result+' or '+FromTo(items[i])
     else
      Result:=FromTo(items[i]);
  end;
  if neg  then
    Result:=' not ('+Result+')'
  else
    Result:='('+Result+')'

end;

constructor TYWhereEdit.Create(aowner:tcomponent);
 begin
  inherited Create(aowner);
  CodeField:='Code';
  TitleField:='Title';
  isLike:=false;
  isString:=false;
 end;
end.
