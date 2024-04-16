unit YNumberEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, DB, DBTables,MaskUtils ;

type

{ TYEdit }

  TYDBEdit = class(TDBEdit)
  private
    { Private declarations }
    function GetText: TCaption;
    function MyGetText: TCaption;
    procedure SetText(const Value: TCaption);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Text: TCaption read GetText write SetText;
  end;





procedure Register;

implementation

 uses Tools, YShamsiDate;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYDBEdit]);
end;


{ TYEdit }

constructor TYDBEdit.Create(AOwner: TComponent);
 begin
  inherited;
 end;

function TYDBEdit.GetText: TCaption;
 begin
  result:=MyGetText;
 end;


function TYDBEdit.MyGetText: TCaption;
 var
  Len: Integer;
  s: string;
 begin
  Len := GetTextLen;
  SetString(s, PChar(nil), Len + 1);
  if Len <> 0 then
    GetTextBuf(Pointer(s), Len + 1);
  result:=DeleteComma(s)
 end;


procedure TYDBEdit.SetText(const Value: TCaption);
 var
  P: array[1..255] of Char;
 begin
     StrPCopy(@p, CommaSeperate(Value)+'y');
     SetTextBuf(@p);
 end;

end.
