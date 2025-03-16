unit YDBCheckGroupBox;
interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls,db,DBCtrls;

type
  TYDBCheckGroupBox = class(TGroupBox)

  private
   FDBCheckBox:TDBCheckBox;
   FMaxheight:word;
   FMinHeight:word;
   IsOnClick:boolean;
   FDataSource:TDataSource;
   FField:String;

    procedure FOnClick(sender:TObject);
    procedure SetDataSource(value:TDataSource);
    procedure SetField(value:String);

    { Private declarations }
  protected
    procedure SetParent(AParent: TWinControl); override;
    procedure SetName(const Value: TComponentName); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer); override;
    procedure SetupInternalCheckBox;
    Property YDBCheckBox:TDBCheckBox read FDBCheckBox;
    { Public declarations }
  published
   Property MinHeight:word read FMinheight write FMinheight;
   Property MaxHeight:word read FMaxheight write FMaxheight;
   Property DataSource:TDataSource read FDataSource write SetDataSource;
   Property DataField:String read FField write SetField;
    { Published declarations }
  end;

procedure Register;

implementation

procedure TYDbCheckGroupBox.SetupInternalCheckBox;
begin
  if Assigned(FDBCheckBox) then exit;
  FDBCheckBox:=TDBCheckBox.Create(Self);
  FDBCheckBox.Parent:=self;
  FDBCheckBox.OnClick:=FOnClick;
end;
constructor TYDbCheckGroupBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
    SetupInternalCheckBox;
end;

procedure TYDbCheckGroupBox.SetName(const Value: TComponentName);
begin
  if (csDesigning in ComponentState) and ((FDBCheckBox.GetTextLen = 0) or
     (CompareText(FDBCheckBox.Caption, Name) = 0)) then
    FDBCheckBox.Caption := Value;
  inherited SetName(Value);
  if csDesigning in ComponentState then
    Text := '';
end;


procedure TYDbCheckGroupBox.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);

  if FDBCheckBox <> nil then
  with FdbCheckBox do
  if not IsOnClick then
  begin
   SetBounds(self.Width-15,0,15,15);// Top -Height, Width, Height);
   FMaxheight:=self.Height;
  end
  else
   IsOnClick:=false;

end;
procedure TYDbCheckGroupBox.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FDBCheckBox) and (Operation = opRemove) then
    FDBCheckBox := nil;
end;
procedure TYDbCheckGroupBox.SetParent(AParent: TWinControl);
begin
  inherited SetParent(AParent);
  if FDBCheckBox = nil then exit;
  FDBCheckBox.Parent := self;
  FDBCheckBox.Visible := True;
end;

procedure TYDbCheckGroupBox.FOnClick(sender:TObject);
begin
IsOnClick:=true;
 if FDBCheckBox.Checked then
  Self.Height:=FMaxheight
 else
  Self.Height:=FMinHeight;

end;


 procedure TYDbCheckGroupBox.SetDataSource(value:TDataSource);
     begin
      if value<>FDataSource then
        Begin
        FDataSource:=value;
        FDBCheckBox.DataSource:=FDataSource
        end;
     end;

    procedure TYDbCheckGroupBox.SetField(value:String);
     begin
      if value<>FField then
        Begin
        FField:=value;
        FDBCheckBox.DataField:=FField;
        end;
     end;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYDBCheckGroupBox]);
end;

end.
