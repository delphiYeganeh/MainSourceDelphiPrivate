unit YAmountEdit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  TYAmountEdit = class(TEdit)
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
    property YText: TCaption read GetText write FText;
  end;

procedure Register;

implementation

uses YShamsiDate;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYAmountEdit]);
end;
procedure TYAmountEdit.KeyUp( var Key: Word;  Shift: TShiftState);
begin
   if is_integer(text) then
    Text:=CommaSeperate(Text);
   hint:=text;
   ShowHint:=true;
   SelStart:=length(Text);
end;

procedure TYAmountEdit.SetText(const Value: TCaption);
 var
  P: array[1..255] of Char;
 begin
   if Text <> Value then
    begin
     StrPCopy(@p, Value);
     SetTextBuf(@p);
    end;
 end;


function TYAmountEdit.GetText: TCaption;
 begin
  result:=DeleteComma( Text);
 end;

end.