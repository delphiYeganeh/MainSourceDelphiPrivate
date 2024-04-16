unit DBLookupEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls,DBCtrls,db,forms,Graphics,Grids,DBGrids,dialogs;

type
  TOnNotExist=Procedure( Sender:Tobject) Of Object;
  TOnEnterDown=Procedure( Sender:Tobject) Of Object;
  TDBLookupEdit = class(TEdit)
  private
   FDBGrid:TDBgrid;
   FListSource:TDataSource;
   FTitleField,FIDField   : String;
   FOnNotExist              : TOnNotExist;
   FOnEnterDown              : TOnEnterDown;
   procedure SetDBgrid(value:TDBgrid);
   procedure FDBEditChange(Sender: TObject);
   procedure FDBEditExit(Sender: TObject);
   procedure FDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   procedure FDBGridClick(column: TColumn);
   procedure FDBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  protected

  public
    constructor Create(AOwner: TComponent); override;
  published
   Property ListSource:TDataSource read FListSource write FListSource;
   Property Dbgrid:TDBgrid read FDbgrid write SetDbgrid;
   Property IDField:String read FIDField write FIDField;
   Property TitleField:String read FTitleField write FTitleField;
   property OnNOtExist:TOnNotExist read FOnNotExist write FOnNotExist;
   property OnEnterDown:TOnEnterDown read FOnEnterDown write FOnEnterDown;
  end;

{ TDBEdit }
procedure Register;

implementation

uses YShamsiDate;


constructor TDBLookupEdit.Create(AOwner: TComponent);
 begin
  inherited Create(AOwner);
  OnChange:=FDBEditChange;
  OnKeyDown:=FDBEditKeyDown;
  onexit:=FDBEditExit;
 end;
Function is_integer(s:string):boolean;
 var i: integer;
 begin
   s:=trim(s);
   result:=true;
   if s='' then
    begin
     Result:=false;
     exit;
    end;
   for i:=1 to length(s) do
    if pos(s[i],'1234567890')=0 then
     begin
      Result:=False;
      exit;
     end;
 end;

procedure TDBLookupEdit.SetDbgrid(value:TDBGrid);
     begin
      if value<>FDBGrid then
          begin
            FDBGrid:=value;
            if value<>nil then
             begin
              FDBGrid.OnCellClick:=FDBGridClick;
              FDBGrid.OnKeyDown:=FDBGridKeyDown;
             end;
          end;
     end;

procedure TDBLookupEdit.FDBEditChange(Sender: TObject);
var s:string;
begin
s:=Replace(Text,'  ',' ');
  if FListSource<>nil then
with FListSource.DataSet do
 if is_integer(s) then
   Locate(FIDField,s,[lopartialkey])
 else
     Locate(FTitleField,Text,[lopartialkey]);
end;

procedure TDBLookupEdit.FDBEditExit(Sender: TObject);
begin
     with FListSource.DataSet do
     if not FDBGrid.Focused then
    begin
        if is_integer(Text) then
           if Locate(FIDField,Text,[]) then
             Text:=FieldByName(FTitleField).AsString;
   if FieldByName(FTitleField).AsString<>text then
      if not Locate(FTitleField,Text,[]) then
         begin
           if Assigned(FOnNotExist) then
             FOnNotExist(self);
         end;
    end;
end;

procedure TDBLookupEdit.FDBEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with  FListSource.DataSet do
if (key=vk_down) or (key=vk_up) then
   begin
    FDBGrid.Show;
    if (key=vk_down) then
         Next
        else
         Prior;
         Text:=FieldByName(FTitleField).AsString;
         SelectAll;
   end
else
 if key=VK_RETURN then
   if Assigned(FOnEnterDown) then
      FOnEnterDown(self);

end;


procedure TDBLookupEdit.FDBGridClick(Column: TColumn);
begin
  self.SetFocus;
  Self.Text:=FListSource.DataSet.FieldByName(FTitleField).AsString;
end;

procedure TDBLookupEdit.FDBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
   self.SetFocus;
end;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TDBLookupEdit]);
end;

end.
