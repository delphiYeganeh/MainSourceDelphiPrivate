unit UemsVCL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, DB, DBTables ;

type

{ TShamsiDateEdit }

   TShamsiDateEdit = class(TEdit)
  private
    { Private declarations }
    FCheckValidity: Boolean;
    function GetText: TCaption;
    function MyGetText: TCaption;
    procedure SetCheckValidity(const Value: Boolean);
    procedure SetText(const Value: TCaption);
    procedure WantsToExit(Sender: TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function IsValidDate: Boolean;
  published
    { Published declarations }
    property CheckValidity: Boolean read FCheckValidity write SetCheckValidity default True ;
    property Text: TCaption read GetText write SetText;
  end; 
{ TShamsiFieldDataLink }
  TShamsiFieldDataLink = class(TDataLink)
  private
    FField: TField;
    FFieldName: string;
    FControl: TComponent;
    FEditing: Boolean;
    FModified: Boolean;
    FOnDataChange: TNotifyEvent;
    FOnEditingChange: TNotifyEvent;
    FOnUpdateData: TNotifyEvent;
    FOnActiveChange: TNotifyEvent;
    function GetCanModify: Boolean;
    procedure SetEditing(Value: Boolean);
    procedure SetField(Value: TField);
    procedure SetFieldName(const Value: string);
    procedure UpdateField;
    procedure UpdateRightToLeft;
  protected
    procedure ActiveChanged; override;
    procedure EditingChanged; override;
    procedure FocusControl(Field: TFieldRef); override;
    procedure LayoutChanged; override;
    procedure RecordChanged(Field: TField); override;
    procedure UpdateData; override;
  public
    constructor Create;
    function Edit: Boolean;
    procedure Modified;
    procedure Reset;
    property CanModify: Boolean read GetCanModify;
    property Control: TComponent read FControl write FControl;
    property Editing: Boolean read FEditing;
    property Field: TField read FField;
    property FieldName: string read FFieldName write SetFieldName;
    property OnDataChange: TNotifyEvent read FOnDataChange write FOnDataChange;
    property OnEditingChange: TNotifyEvent read FOnEditingChange write FOnEditingChange;
    property OnUpdateData: TNotifyEvent read FOnUpdateData write FOnUpdateData;
    property OnActiveChange: TNotifyEvent read FOnActiveChange write FOnActiveChange;
  end;

  TDBShamsiDateEdit = class(TCustomMaskEdit)
  private
    FDataLink: TShamsiFieldDataLink;
    FCanvas: TControlCanvas;
    FAlignment: TAlignment;
    FFocused: Boolean;
    FShowMsg,
    FCheckValidity: Boolean;
    procedure ActiveChange(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure EditingChange(Sender: TObject);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    function GetReadOnly: Boolean;
    function GetTextMargins: TPoint;
    procedure ResetMaxLength;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetFocused(Value: Boolean);
    procedure SetReadOnly(Value: Boolean);
    procedure UpdateData(Sender: TObject);
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure WMUndo(var Message: TMessage); message WM_UNDO;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    procedure SetCheckValidity(const Value: Boolean);
  protected
    procedure Change; override;
    function EditCanModify: Boolean; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyUp( var Key: Word;  Shift: TShiftState); override;
    procedure Loaded; override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure Reset; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function UseRightToLeftAlignment: Boolean; override;
    function IsValidDate: Boolean;
    property Field: TField read GetField;
  published
    property Anchors;
    property AutoSelect;
    property AutoSize;
    property EditMask;
    property BiDiMode;
    property BorderStyle;
    property CharCase;
    property CheckValidity: Boolean read FCheckValidity write SetCheckValidity;
    property ShowMsg: Boolean read FShowMsg write FShowMsg;
    property Color;
    property Constraints;
    property Ctl3D;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnChange;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;


procedure Register;

implementation

 uses Tools;

procedure Register;
begin
  RegisterComponents('Yeganeh', [TDBShamsiDateEdit]);
  RegisterComponents('Yeganeh', [TShamsiDateEdit]);
end;

Procedure OutputMessage(s: string);
begin
    s := Trim(s);
    if s='' then
      ShowMessage('Ìﬂ  «—ÌŒ „⁄ »— ÂÃ—Ì ŒÊ—‘ÌœÌ ‰Ì”  ')
    else
      ShowMessage(s+' Ìﬂ  «—ÌŒ „⁄ »— ÂÃ—Ì ŒÊ—‘ÌœÌ ‰Ì” ');
end;


{ TShamsiFieldDataLink }

constructor TShamsiFieldDataLink.Create;
begin
  inherited Create;
  VisualControl := True;
end;

procedure TShamsiFieldDataLink.SetEditing(Value: Boolean);
begin
  if FEditing <> Value then
  begin
    FEditing := Value;
    FModified := False;
    if Assigned(FOnEditingChange) then FOnEditingChange(Self);
  end;
end;

procedure TShamsiFieldDataLink.SetFieldName(const Value: string);
begin
  if FFieldName <> Value then
  begin
    FFieldName :=  Value;
    UpdateField;
  end;
end;

procedure TShamsiFieldDataLink.SetField(Value: TField);
begin
  if FField <> Value then
  begin
    FField := Value;
    EditingChanged;
    RecordChanged(nil);
    UpdateRightToLeft;
  end;
end;

procedure TShamsiFieldDataLink.UpdateField;
begin
  if Active and (FFieldName <> '') then
  begin
    if Assigned(FControl) then
      SetField(GetFieldProperty(DataSource.DataSet, FControl, FFieldName)) else
      SetField(DataSource.DataSet.FieldByName(FFieldName));
  end else
    SetField(nil);
end;

procedure TShamsiFieldDataLink.UpdateRightToLeft;
var
  IsRightAligned: Boolean;
  AUseRightToLeftAlignment: Boolean;
begin
  if Assigned(FControl) and (FControl is TWinControl) then
    with FControl as TWinControl do
      if IsRightToLeft then
      begin
        IsRightAligned :=
          (GetWindowLong(Handle, GWL_EXSTYLE) and WS_EX_RIGHT) = WS_EX_RIGHT;
        AUseRightToLeftAlignment :=
          DBUseRightToLeftAlignment(TControl(FControl), Field);
        if (IsRightAligned and (not AUseRightToLeftAlignment)) or
           ((not IsRightAligned) and AUseRightToLeftAlignment) then
          Perform(CM_RECREATEWND, 0, 0);
      end;    
end;

function TShamsiFieldDataLink.Edit: Boolean;
begin
  if CanModify then inherited Edit;
  Result := FEditing;
end;

function TShamsiFieldDataLink.GetCanModify: Boolean;
begin
  Result := not ReadOnly and (Field <> nil) and Field.CanModify;
end;

procedure TShamsiFieldDataLink.Modified;
begin
  FModified := True;
end;

procedure TShamsiFieldDataLink.Reset;
begin
  RecordChanged(nil);
end;

procedure TShamsiFieldDataLink.ActiveChanged;
begin
  UpdateField;
  if Assigned(FOnActiveChange) then FOnActiveChange(Self);
end;

procedure TShamsiFieldDataLink.EditingChanged;
begin
  SetEditing(inherited Editing and CanModify);
end;

procedure TShamsiFieldDataLink.FocusControl(Field: TFieldRef);
begin
  if (Field^ <> nil) and (Field^ = FField) and (FControl is TWinControl) then
    if TWinControl(FControl).CanFocus then
    begin
      Field^ := nil;
      TWinControl(FControl).SetFocus;
    end;
end;

procedure TShamsiFieldDataLink.RecordChanged(Field: TField);
begin
  if (Field = nil) or (Field = FField) then
  begin
    if Assigned(FOnDataChange) then FOnDataChange(Self);
    FModified := False;
  end;
end;

procedure TShamsiFieldDataLink.LayoutChanged;
begin
  UpdateField;
end;

procedure TShamsiFieldDataLink.UpdateData;
begin
  if FModified then
  begin
    if (Field <> nil) and Assigned(FOnUpdateData) then FOnUpdateData(Self);
    FModified := False;
  end;
end;

{ TDBShamsiDateEdit }

procedure TDBShamsiDateEdit.ResetMaxLength;
var
  F: TField;
begin
  if (MaxLength > 0) and Assigned(DataSource) and Assigned(DataSource.DataSet) then
  begin
    F := DataSource.DataSet.FindField(DataField);
    if Assigned(F) and (F.DataType in [ftString, ftWideString]) and (F.Size = MaxLength) then
      MaxLength := 0;
  end;
end;

constructor TDBShamsiDateEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  inherited ReadOnly := True;
  ControlStyle := ControlStyle + [csReplicatable];
  FDataLink := TShamsiFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnEditingChange := EditingChange;
  FDataLink.OnUpdateData := UpdateData;
  FDataLink.OnActiveChange := ActiveChange;

  FCheckValidity:=True;
end;

destructor TDBShamsiDateEdit.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  FCanvas.Free;
  inherited Destroy;
end;

procedure TDBShamsiDateEdit.Loaded;
begin
  inherited Loaded;
  ResetMaxLength;
  if (csDesigning in ComponentState) then DataChange(Self);
end;

procedure TDBShamsiDateEdit.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

function TDBShamsiDateEdit.UseRightToLeftAlignment: Boolean;
begin
  Result := DBUseRightToLeftAlignment(Self, Field);
end;

procedure TDBShamsiDateEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
    FDataLink.Edit;
end;

procedure TDBShamsiDateEdit.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  if (Key in [#32..#255]) and (FDataLink.Field <> nil) and
    not FDataLink.Field.IsValidChar(Key) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
  case Key of
    ^H, ^V, ^X, #32..#255:
      FDataLink.Edit;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
        Key := #0;
      end;
  end;
end;
 Procedure CorrectDate(var s:string);
 begin
 case length(s) of
 1: begin
     if s[1] in ['7'..'9'] then
      s:='13'+s;
    end;
 4: s:=s+'/';
 6: begin
     if s[6] in ['2'..'9'] then
      s:=copy(s,1,5)+'0'+s[6]+'/';
    end;
 7: begin
     if (s[6]+s[7]='13') then
      s:=copy(s,1,5)+'01/3' else

     if (s[7] in ['4'..'9']) and (s[6]='1') then
       s:=copy(s,1,5)+'01/0'+s[7]
       else
       s:=s+'/';
    end;
 8: begin
     if (s[8] in ['4'..'9']) then
       s:=copy(s,1,7)+'/0'+s[8]
       else
       s:=copy(s,1,7)+'/'+s[8];
    end;
 9: begin
     if s[9] in ['4'..'9'] then
      s:=copy(s,1,8)+'0'+s[9];
    end;
 end;{case}
end;

procedure TDBShamsiDateEdit.KeyUp( var Key: Word;  Shift: TShiftState);
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

function TDBShamsiDateEdit.EditCanModify: Boolean;
begin
  Result := FDataLink.Edit;
end;

procedure TDBShamsiDateEdit.Reset;
begin
  FDataLink.Reset;
  SelectAll;
end;

procedure TDBShamsiDateEdit.SetFocused(Value: Boolean);
begin
  if FFocused <> Value then
  begin
    FFocused := Value;
    if (FAlignment <> taLeftJustify) and not IsMasked then Invalidate;
    FDataLink.Reset;
  end;
end;

procedure TDBShamsiDateEdit.Change;
begin
  FDataLink.Modified;
  inherited Change;
end;

function TDBShamsiDateEdit.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TDBShamsiDateEdit.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then
    Value.FreeNotification(Self);
end;

function TDBShamsiDateEdit.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TDBShamsiDateEdit.SetDataField(const Value: string);
begin
  if not (csDesigning in ComponentState) then
    ResetMaxLength;
  FDataLink.FieldName := Value;
end;

function TDBShamsiDateEdit.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

procedure TDBShamsiDateEdit.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

function TDBShamsiDateEdit.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TDBShamsiDateEdit.ActiveChange(Sender: TObject);
begin
  ResetMaxLength;
end;

procedure TDBShamsiDateEdit.DataChange(Sender: TObject);
begin
  if FDataLink.Field <> nil then
  begin
    if FAlignment <> FDataLink.Field.Alignment then
    begin
      EditText := '';  {forces update}
      FAlignment := FDataLink.Field.Alignment;
    end;
    EditMask := FDataLink.Field.EditMask;
    if not (csDesigning in ComponentState) then
    begin
      if (FDataLink.Field.DataType in [ftString, ftWideString]) and (MaxLength = 0) then
        MaxLength := FDataLink.Field.Size;
    end;
    if FFocused and FDataLink.CanModify then
      Text := FDataLink.Field.Text
    else
    begin
      EditText := FDataLink.Field.DisplayText;
      if FDataLink.Editing and FDataLink.FModified then
        Modified := True;
    end;
  end else
  begin
    FAlignment := taLeftJustify;
    EditMask := '';
    if csDesigning in ComponentState then
      EditText := Name else
      EditText := '';
  end;
end;

procedure TDBShamsiDateEdit.EditingChange(Sender: TObject);
begin
  inherited ReadOnly := not FDataLink.Editing;
end;

procedure TDBShamsiDateEdit.UpdateData(Sender: TObject);
var
 s: string;
 i:integer;
begin
  ValidateEdit;
  s:=trim(Text);
    i:=pos('.',s);
  while i<>0 do
    begin
      s:=copy(s,1,i-1)+'/'+copy(s,i+1,length(s)-i);
      i:=pos('.',s)
    end;
   text:=s;
  if FCheckValidity then
    if not IsValidDate then
     begin
      OutputMessage(s);
      SetFocus;
     end
    else
      begin
       ShamsiValidateDate(s);
       Text:=s;
      end;
       FDataLink.Field.Text := Text;

end;

procedure TDBShamsiDateEdit.WMUndo(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TDBShamsiDateEdit.WMPaste(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TDBShamsiDateEdit.WMCut(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TDBShamsiDateEdit.CMEnter(var Message: TCMEnter);
begin
  SetFocused(True);
  inherited;
  if SysLocale.FarEast and FDataLink.CanModify then
    inherited ReadOnly := False;
end;

procedure TDBShamsiDateEdit.CMExit(var Message: TCMExit);
begin
  try
    FDataLink.UpdateRecord;
  except
    SelectAll;
    SetFocus;
    raise;
  end;
  SetFocused(False);
  CheckCursor;
  DoExit;
end;

procedure TDBShamsiDateEdit.WMPaint(var Message: TWMPaint);
const
  AlignStyle : array[Boolean, TAlignment] of DWORD =
   ((WS_EX_LEFT, WS_EX_RIGHT, WS_EX_LEFT),
    (WS_EX_RIGHT, WS_EX_LEFT, WS_EX_LEFT));
var
  Left: Integer;
  Margins: TPoint;
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
  AAlignment: TAlignment;
  ExStyle: DWORD;
begin
  AAlignment := FAlignment;
  if UseRightToLeftAlignment then ChangeBiDiModeAlignment(AAlignment);
  if ((AAlignment = taLeftJustify) or FFocused) and
    not (csPaintCopy in ControlState) then
  begin
    if SysLocale.MiddleEast and HandleAllocated and (IsRightToLeft) then
    begin { This keeps the right aligned text, right aligned }
      ExStyle := DWORD(GetWindowLong(Handle, GWL_EXSTYLE)) and (not WS_EX_RIGHT) and
        (not WS_EX_RTLREADING) and (not WS_EX_LEFTSCROLLBAR);
      if UseRightToLeftReading then ExStyle := ExStyle or WS_EX_RTLREADING;
      if UseRightToLeftScrollbar then ExStyle := ExStyle or WS_EX_LEFTSCROLLBAR;
      ExStyle := ExStyle or
        AlignStyle[UseRightToLeftAlignment, AAlignment];
      if DWORD(GetWindowLong(Handle, GWL_EXSTYLE)) <> ExStyle then
        SetWindowLong(Handle, GWL_EXSTYLE, ExStyle);
    end;
    inherited;
    Exit;
  end;
{ Since edit controls do not handle justification unless multi-line (and
  then only poorly) we will draw right and center justify manually unless
  the edit has the focus. }
  if FCanvas = nil then
  begin
    FCanvas := TControlCanvas.Create;
    FCanvas.Control := Self;
  end;
  DC := Message.DC;
  if DC = 0 then DC := BeginPaint(Handle, PS);
  FCanvas.Handle := DC;
  try
    FCanvas.Font := Font;
    with FCanvas do
    begin
      R := ClientRect;
      if not (NewStyleControls and Ctl3D) and (BorderStyle = bsSingle) then
      begin
        Brush.Color := clWindowFrame;
        FrameRect(R);
        InflateRect(R, -1, -1);
      end;
      Brush.Color := Color;
      if not Enabled then
        Font.Color := clGrayText;
      if (csPaintCopy in ControlState) and (FDataLink.Field <> nil) then
      begin
        S := FDataLink.Field.DisplayText;
        case CharCase of
          ecUpperCase: S := AnsiUpperCase(S);
          ecLowerCase: S := AnsiLowerCase(S);
        end;
      end else
        S := EditText;
      if PasswordChar <> #0 then FillChar(S[1], Length(S), PasswordChar);
      Margins := GetTextMargins;
      case AAlignment of
        taLeftJustify: Left := Margins.X;
        taRightJustify: Left := ClientWidth - TextWidth(S) - Margins.X - 1;
      else
        Left := (ClientWidth - TextWidth(S)) div 2;
      end;
      if SysLocale.MiddleEast then UpdateTextFlags;
      TextRect(R, Left, Margins.Y, S);
    end;
  finally
    FCanvas.Handle := 0;
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;
end;

procedure TDBShamsiDateEdit.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

function TDBShamsiDateEdit.GetTextMargins: TPoint;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  if NewStyleControls then
  begin
    if BorderStyle = bsNone then I := 0 else
      if Ctl3D then I := 1 else I := 2;
    Result.X := SendMessage(Handle, EM_GETMARGINS, 0, 0) and $0000FFFF + I;
    Result.Y := I;
  end else
  begin
    if BorderStyle = bsNone then I := 0 else
    begin
      DC := GetDC(0);
      GetTextMetrics(DC, SysMetrics);
      SaveFont := SelectObject(DC, Font.Handle);
      GetTextMetrics(DC, Metrics);
      SelectObject(DC, SaveFont);
      ReleaseDC(0, DC);
      I := SysMetrics.tmHeight;
      if I > Metrics.tmHeight then I := Metrics.tmHeight;
      I := I div 4;
    end;
    Result.X := I;
    Result.Y := I;
  end;
end;

function TDBShamsiDateEdit.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or (FDataLink <> nil) and
    FDataLink.ExecuteAction(Action);
end;

function TDBShamsiDateEdit.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or (FDataLink <> nil) and
    FDataLink.UpdateAction(Action);
end;

procedure TDBShamsiDateEdit.SetCheckValidity(const Value: Boolean);
begin
  FCheckValidity := Value;
end;

function TDBShamsiDateEdit.IsValidDate: Boolean;
 var
  a: integer;
 begin
   try if StrToInt( copy(text,1,4))>1900 then
     text:=ShamsiDate(StrToDate(Text)) except end;
   IsValidDate:=ShamsiDecodeDate(Text, a, a, a);
 end;

{ TShamsiDateEdit }
constructor TShamsiDateEdit.Create(AOwner: TComponent);
 begin
  inherited;
  OnExit:=WantsToExit;
  CheckValidity:=True;
 end;

function TShamsiDateEdit.GetText: TCaption;
 begin
  result:=MyGetText;
 end;

function TShamsiDateEdit.IsValidDate: Boolean;
 var
  a: integer;
 begin
   IsValidDate:=ShamsiDecodeDate(MyGetText, a, a, a);
 end;

function TShamsiDateEdit.MyGetText: TCaption;
 var
  Len: Integer;
  s: string;
 begin
  Len := GetTextLen;
  SetString(s, PChar(nil), Len + 1);
  if Len <> 0 then
    GetTextBuf(Pointer(s), Len + 1);
  result:=s;
 end;

procedure TShamsiDateEdit.SetCheckValidity(const Value: Boolean);
 begin
  FCheckValidity := Value;
 end;

procedure TShamsiDateEdit.SetText(const Value: TCaption);
 var
  P: array[1..255] of Char;
 begin
   if MyGetText <> Value then
    begin
     StrPCopy(@p, Value);
     SetTextBuf(@p);
     if not(csdesigning in componentstate) then
       WantsToExit(Self);
    end;
 end;

procedure TShamsiDateEdit.WantsToExit(Sender: TObject);
 var
  s: string;
 begin
  if FCheckValidity then
   if not IsValidDate then
    begin
     OutputMessage(MyGetText);
     try Text:='';
     TWinControl(Sender).SetFocus; except end;
    end
   else
    begin
     s:=MyGetText;
     ShamsiValidateDate(s);
     SetTextBuf(PChar(s));
    end;
 end;

end.
