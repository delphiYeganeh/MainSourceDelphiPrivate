unit YCheckGroupBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls,dialogs,graphics,DBCtrls;

type
  TYCheckGroupBox = class(TGroupBox)

  private
   FCheckBox:TCheckBox;
   FMaxheight:word;
   FMinHeight:word;
    procedure FOnClick(sender:TObject);
    procedure FOnEnter(sender:TObject);
    procedure FOnExit(sender:TObject);

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
    { Public declarations }
  published
   Property YCheckBox:TCheckBox read FCheckBox;
   Property MinHeight:word read FMinheight write FMinheight;
   Property MaxHeight:word read FMaxheight write FMaxheight;
    { Published declarations }
  end;

procedure Register;

implementation

procedure TYCheckGroupBox.SetupInternalCheckBox;
begin
  if Assigned(FCheckBox) then exit;
  FCheckBox := TCheckBox.Create(Self);
  FCheckBox.Parent:=self;
  FCheckBox.OnClick:=FOnClick;
  FCheckBox.OnEnter:=FOnEnter;
  FCheckBox.OnExit:=FOnExit;

end;
constructor TYCheckGroupBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SetupInternalCheckBox;
  end;

procedure TYCheckGroupBox.SetName(const Value: TComponentName);
begin
  if (csDesigning in ComponentState) and ((FCheckBox.GetTextLen = 0) or
     (CompareText(FCheckBox.Caption, Name) = 0)) then
    FCheckBox.Caption := Value;

    
  inherited SetName(Value);
  if csDesigning in ComponentState then
    Text := '';
end;


procedure TYCheckGroupBox.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
 if FCheckBox <> nil then
   FCheckBox.SetBounds(self.Width-15,0,15,15);

end;
procedure TYCheckGroupBox.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FCheckBox) and (Operation = opRemove) then
    FCheckBox := nil;
end;
procedure TYCheckGroupBox.SetParent(AParent: TWinControl);
begin
  inherited SetParent(AParent);
  if FCheckBox = nil then exit;
  FCheckBox.Parent := self;
  FCheckBox.Visible := True;
end;
procedure TYCheckGroupBox.FOnClick(sender:TObject);
begin
 if FCheckBox.Checked then
    Self.Height:=FMaxheight
 else
  Self.Height:=FMinHeight;


  end;
procedure TYCheckGroupBox.FOnEnter(sender:TObject);
begin
  TCheckBox(sender).Color:=clGreen;
end;
procedure TYCheckGroupBox.FOnExit(sender:TObject);
begin
  TCheckBox(sender).Color:=Color;
end;


procedure Register;
begin
  RegisterComponents('Yeganeh', [TYCheckGroupBox]);
end;

end.
