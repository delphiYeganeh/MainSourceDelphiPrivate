{
  BiDiMode and XCalendar support for some "TMS Planner" controls
  by adgteq
}

{***********************************************************************}
{ TPlannerDBDatePicker component                                        }
{ for Delphi & C++ Builder                                              }
{ version 1.4                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright � 1999-2007                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{                                                                       }
{ The source code is given as is. The author is not responsible         }
{ for any possible damage done due to the use of this code.             }
{ The component can be freely used in any application. The source       }
{ code remains property of the writer and may not be distributed        }
{ freely as such.                                                       }
{***********************************************************************}

unit xcalPlannerDBDatePicker;

{$I TMSDEFS.INC}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, DBCtrls, xcalPlannerDatePicker;

type
  TXCalPlannerDBDatePicker = class(TXCalPlannerDatePicker)
  private
    { Private declarations }
    FDataLink: TFieldDataLink;
    FOldState: TDataSetState;
    FIsEditing: Boolean;
    FInternalCall: boolean;
    FNewDate: TDateTime;
    FNullDate: Boolean;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetReadOnly: Boolean;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure DataUpdate(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure ActiveChange(Sender: TObject);
    {$IFNDEF TMSDOTNET}
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    {$ENDIF}
  protected
    { Protected declarations }
    procedure Change; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Loaded; override;
    function EditCanModify: Boolean; virtual;
    procedure DaySelect; override;
//xxx    procedure DoExit; override;
  public
    { Public declarations }
    constructor Create(aOwner:TComponent); override;
    destructor Destroy; override;
    {$IFDEF DELPHI4_LVL}
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    {$ENDIF}
  published
    { Published declarations }
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
  end;

implementation


{ TXCalPlannerDBDatePicker }

procedure TXCalPlannerDBDatePicker.Change;
var
  d: TDateTime;
begin         
  if self.Text = '' then
  begin
    FNullDate:= true;
    if not FInternalCall then
      if EditCanModify then
      begin
        FNewDate:= -1;
        FDataLink.Modified;
      end;
  end
  else
  begin
    inherited;

    FNullDate:= false;
    d:= self.Date;
    if not FInternalCall then
      if EditCanModify then
      begin
        FNewDate:= d;
        FDataLink.Modified;
      end;
  end;
  //inherited;
end;

{$IFNDEF TMSDOTNET}
procedure TXCalPlannerDBDatePicker.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;
{$ENDIF}

procedure TXCalPlannerDBDatePicker.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (csDestroying in ComponentState) then
    Exit;

  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

constructor TXCalPlannerDBDatePicker.Create(aOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := DataUpdate;
  FDataLink.OnActiveChange := ActiveChange;

  FInternalCall:= false;
  FNewDate:= Self.Date;
  FNullDate:= false;
end;

procedure TXCalPlannerDBDatePicker.DataChange(Sender: TObject);
begin
  if not Assigned(FDataLink.DataSet) then
    Exit;

  if FIsEditing then
    Exit;

  if Assigned(FDataLink.Field) then
  begin
    if not (FDataLink.DataSet.State = dsInsert) and
     (FOldState <> dsInsert)  then
    begin
      FInternalCall:= true;
      if FDataLink.Field.AsString = '' then
      begin
        self.Date:= -1;
        self.Text:= '';
      end
      else
      begin
        self.Date := FDataLink.Field.AsDateTime;
      end;
      FInternalCall:= false;
      //Modified := False;
    end;

    if (FDataLink.DataSet.State = dsInsert) {and (FOldState <> dsInsert)} then
    begin
      self.Date := FDataLink.Field.AsDateTime;
    end;
  end;

  FOldState := FDataLink.DataSet.State;
end;

procedure TXCalPlannerDBDatePicker.DataUpdate(Sender: TObject);
begin
  if Assigned(FDataLink.Field) {and not (FDataLink.DataSet.State = dsInsert)} then
  begin
    if FNullDate then
      FDataLink.Field.AsString:= ''
    else
      FDataLink.Field.AsDateTime := FNewDate;//self.Date;
  end;
end;

destructor TXCalPlannerDBDatePicker.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  inherited Destroy;
end;

{xxx
procedure TXCalPlannerDBDatePicker.DoExit;
begin
  inherited;
  if FDataLink.Edit then
  begin
    DataUpdate(Self);
  end;
end;
}
function TXCalPlannerDBDatePicker.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TXCalPlannerDBDatePicker.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TXCalPlannerDBDatePicker.GetReadOnly: Boolean;
begin
  //Result := FDataLink.ReadOnly;
  Result:= FDataLink.ReadOnly;
end;

procedure TXCalPlannerDBDatePicker.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TXCalPlannerDBDatePicker.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

procedure TXCalPlannerDBDatePicker.SetReadOnly(Value: Boolean);
begin
  //FDataLink.ReadOnly := Value;
  inherited Readonly:= Value;
end;

procedure TXCalPlannerDBDatePicker.Loaded;
begin
  inherited Loaded;
end;


procedure TXCalPlannerDBDatePicker.ActiveChange(Sender: TObject);
begin
  if Assigned(FDataLink) then
  begin
    if Assigned(FDataLink.DataSet) then
    begin
      if not FDataLink.DataSet.Active then
        Text := '';
    end
    else
    begin
      Text := '';
    end;
  end;
end;

{$IFDEF DELPHI4_LVL}

function TXCalPlannerDBDatePicker.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or (FDataLink <> nil) and
    FDataLink.ExecuteAction(Action);
end;

function TXCalPlannerDBDatePicker.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or (FDataLink <> nil) and
    FDataLink.UpdateAction(Action);
end;

{$ENDIF}

function TXCalPlannerDBDatePicker.EditCanModify: Boolean;
begin
  FDataLink.OnDataChange := nil;
  Result := FDataLink.Edit;
  FDataLink.OnDataChange := DataChange;
end;

procedure TXCalPlannerDBDatePicker.DaySelect;
var
  d: TDateTime;
begin
  inherited;
  if self.Text = '' then
  begin
    FNullDate:= true;
    if not FInternalCall then
      if EditCanModify then
      begin
        FNewDate:= -1;
        FDataLink.Modified;
      end;
  end
  else
  begin
    FNullDate:= false;
    d:= self.Date;
    if not FInternalCall then
      if EditCanModify then
      begin
        FNewDate:= d;
        FDataLink.Modified;
      end;
  end;

end;

end.
