unit YShamsiDateEdit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  TYShamsiDateEdit = class(TEdit)
  private
    FText:TCaption;
    procedure SetText(const Value: TCaption);
    function GetText: TCaption;

  protected
    { Protected declarations }
    procedure KeyUp( var Key: Word;  Shift: TShiftState); override;

  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

uses YShamsiDate;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYShamsiDateEdit]);
end;


procedure TYShamsiDateEdit.KeyUp( var Key: Word;  Shift: TShiftState);
  var s:string;
 function is_numeric:boolean;
  begin
   Result:=Key in [48..57,96..105,191,111];
  end;
begin
  inherited KeyUp(Key,Shift);
    s:=text;
  if not is_numeric then
   begin
    if not ((ssCtrl in shift) or (ssalt in shift)) then
    if (Key in [41..110]) or (Key in [124..255]) then
     begin
      MessageBeep(0);
       Delete(s,length(s),1);
     end else exit
   end
    else
    CorrectDate(s);


   text:=s;
   SelStart:=length(s);

end;

procedure TYShamsiDateEdit.SetText(const Value: TCaption);
 var
  P: array[1..255] of Char;
 begin
   if Text <> Value then
    begin
     StrPCopy(@p, Value);
     SetTextBuf(@p);
    end;
 end;


function TYShamsiDateEdit.GetText: TCaption;
 begin
  result:=DeleteComma( Text);
 end;

end.
