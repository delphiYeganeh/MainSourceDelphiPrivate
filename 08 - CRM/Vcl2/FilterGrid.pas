unit FilterGrid;
// Andrew Bulatov
interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Grids, DBGrids, Graphics,
  StdCtrls,DB,Forms;

type
  TFltrColumn=class(TColumn)
  private
    fValues: TStrings;
    fEnabled: boolean;
    fHint: string;
    procedure SetValues(const Value: TStrings);
    procedure SetEnabled(const Value: boolean);
    function GetFilter: string;
    procedure SetFilter(const Value: string);
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    property Filter:string read GetFilter write SetFilter;
  published
    property CheckValues:TStrings read fValues write SetValues;
    property FilterEnabled:boolean read fEnabled write SetEnabled;
    property Hint:string read fHint write fHint;
  end;

  TFilterGrid = class(TDBGrid)
  private
    fFilters:TStrings;
    FltrEdit:TEdit;
    FltrCombo:TComboBox;
    frst:boolean;
    fAnyKey: boolean;
    procedure CMHintShow(var Message: TMessage); message CM_HINTSHOW;
    procedure FltrEditKeyPress(Sender: TObject; var Key: Char);
    function GetColor: TColor;
    procedure SetColor(const Value: TColor);
    function GetFilter(const FieldName: string): string;
    procedure SetFilter(const FieldName, Value: string);
    procedure EdExit(Sender: TObject);
    procedure EdChng(Sender: TObject);
    function GetColumn(Index: Integer): TFltrColumn;
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;
    procedure TitleClick(Column: TColumn); override;
    procedure ColWidthsChanged; override;
    procedure ColumnMoved(FromIndex, ToIndex: Longint); override;
    procedure Loaded; override;
    function  CreateColumns: TDBGridColumns; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent);override;
    destructor Destroy; override;
    procedure ClearFilter;
    procedure ResetFilter;
    property Filter[const FieldName:string]:string read GetFilter write SetFilter;
    property RowHeights;
    property Column[Index:Integer]:TFltrColumn read GetColumn; default;
  published
    property FilterEditColor:TColor read GetColor write SetColor;
    property AnyKeyFilter:boolean read fAnyKey write fAnyKey;
  end;

procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment; ARightToLeft: Boolean);

procedure Register;

implementation
uses math;

procedure Register;
begin
  RegisterComponents('Data Controls', [TFilterGrid]);
end;

var
  DrawBitmap: TBitmap;

procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment; ARightToLeft: Boolean);
const
  AlignFlags : array [TAlignment] of Integer =
    ( DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_RIGHT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX );
  RTL: array [Boolean] of Integer = (0, DT_RTLREADING);
var
  B, R: TRect;
  Hold, Left: Integer;
  I: TColorRef;
begin
  I := ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then
  begin                       { Use ExtTextOut for solid colors }
    { In BiDi, because we changed the window origin, the text that does not
      change alignment, actually gets its alignment changed. }
    if (ACanvas.CanvasOrientation = coRightToLeft) and (not ARightToLeft) then
      ChangeBiDiModeAlignment(Alignment);
    case Alignment of
      taLeftJustify:
        Left := ARect.Left + DX;
      taRightJustify:
        Left := ARect.Right - ACanvas.TextWidth(Text) - 3;
    else { taCenter }
      Left := ARect.Left + (ARect.Right - ARect.Left) shr 1
        - (ACanvas.TextWidth(Text) shr 1);
    end;
    ACanvas.TextRect(ARect, Left, ARect.Top + DY, Text);
  end
  else begin                  { Use FillRect and Drawtext for dithered colors }
    DrawBitmap.Canvas.Lock;
    try
      with DrawBitmap, ARect do { Use offscreen bitmap to eliminate flicker and }
      begin                     { brush origin tics in painting / scrolling.    }
        Width := Max(Width, Right - Left);
        Height := Max(Height, Bottom - Top);
        R := Rect(DX, DY, Right - Left - 1, Bottom - Top - 1);
        B := Rect(0, 0, Right - Left, Bottom - Top);
      end;
      with DrawBitmap.Canvas do
      begin
        Font := ACanvas.Font;
        Font.Color := ACanvas.Font.Color;
        Brush := ACanvas.Brush;
        Brush.Style := bsSolid;
        FillRect(B);
        SetBkMode(Handle, TRANSPARENT);
        if (ACanvas.CanvasOrientation = coRightToLeft) then
          ChangeBiDiModeAlignment(Alignment);
        DrawText(Handle, PChar(Text), Length(Text), R,
          AlignFlags[Alignment] or RTL[ARightToLeft]);
      end;
      if (ACanvas.CanvasOrientation = coRightToLeft) then  
      begin
        Hold := ARect.Left;
        ARect.Left := ARect.Right;
        ARect.Right := Hold;
      end;
      ACanvas.CopyRect(ARect, DrawBitmap.Canvas, B);
    finally
      DrawBitmap.Canvas.Unlock;
    end;
  end;
end;

function FilterPart(s:string; FType:TFieldType):string;
var
 sgn:string;
begin
 if s='' then exit;
   case s[1] of
   '>':begin
       Delete(s,1,1);
       if (s<>'')and(s[1]='=') then begin
        sgn:='>=';
        Delete(s,1,1);
       end else
        sgn:='>';
      end;
   '<':begin
       Delete(s,1,1);
       if (s<>'')and(s[1] in ['=','>']) then begin
        sgn:='<'+s[1];
        Delete(s,1,1);
       end else
        sgn:='<';
      end;
   '=':begin
       sgn:='=';
       Delete(s,1,1);
      end;
   {'~':begin
       sgn:=' LIKE ';
       Delete(s,1,1);
      end;}
   else begin
     if FType in [ftString,ftWideString] then
       sgn:=' LIKE '
     else
       sgn:='=';
   end;
  end;
  if (s<>'') then begin
   if(s[1]<>'''')and(FType in [ftString,ftWideString,ftTimeStamp,ftDate, ftTime, ftDateTime]) then begin
    if (sgn=' LIKE ')and(pos('*',s)=0) then s:='*'+s+'*';
    s:=''''+s+'''';
   end;
   result:=sgn+s;
  end else
   result:='';
end;

{ TFilterGrid }

procedure TFilterGrid.ClearFilter;
begin
 fFilters.Clear;
 if Assigned(DataSource)and Assigned(DataSource.DataSet) then begin
  DataSource.DataSet.Filtered:=false;
  DataSource.DataSet.Filter:='';
 end;
end;


procedure TFilterGrid.CMHintShow(var Message: TMessage);
var
 s:string;
 p:TPoint;
 mc:TColumn;
 rect:TRect;
 i:integer;
begin
 s:=TCMHintShow(Message).HintInfo^.HintStr;
 p:=ScreenToClient(TCMHintShow(Message).HintInfo^.HintPos);
 for i:=0 to Columns.Count-1 do begin
  rect:=CalcTitleRect(Columns[i],0,mc);
  if (rect.Left<=p.X)and(rect.Right>=p.X)and
     (rect.Top<=p.Y)and(rect.Bottom>=p.Y)
  then begin
    if TFltrColumn(Columns[i]).Hint<>'' then
     s:=TFltrColumn(Columns[i]).Hint;
    break;
  end;
 end;
 TCMHintShow(Message).HintInfo^.HintStr:=s;
 inherited;
end;

procedure TFilterGrid.ColumnMoved(FromIndex, ToIndex: Integer);
begin
  inherited;
  FltrEdit.Visible:=false;
  FltrCombo.Visible:=false;
end;

procedure TFilterGrid.ColWidthsChanged;
begin
  inherited;
  FltrEdit.Visible:=false;
  FltrCombo.Visible:=false;
end;

constructor TFilterGrid.Create(AOwner: TComponent);
begin
  inherited;
  fFilters:=TStringList.Create;
  FltrEdit:=TEdit.Create(self);
  FltrCombo:=TComboBox.Create(self);
  FltrEdit.Color:=$00C8FAFB;
  FltrCombo.Color:=$00C8FAFB;
  FltrCombo.Style:=csDropDownList;
  FltrCombo.Visible:=false;
  FltrEdit.Visible:=false;
  FltrEdit.Height:=0;
  FltrCombo.Height:=0;
  FltrEdit.Width:=0;
  FltrCombo.Width:=0;
  FltrEdit.OnKeyPress:=FltrEditKeyPress;
  FltrEdit.OnExit:=EdExit;
  FltrCombo.OnExit:=EdExit;
  FltrEdit.OnChange:=EdChng;
  FltrCombo.OnChange:=EdChng;
end;

function TFilterGrid.CreateColumns: TDBGridColumns;
begin
 Result := TDBGridColumns.Create(Self, TFltrColumn);
end;

destructor TFilterGrid.Destroy;
begin
  fFilters.Free;
  inherited;
end;

procedure TFilterGrid.DrawCell(ACol, ARow: Integer; ARect: TRect;
  AState: TGridDrawState);
var
 DrawColumn :TColumn;
 s:string;
 mc:TColumn;
 d:integer;
const
    ScrollArrows: array [Boolean, Boolean] of Integer =
      ((DFCS_SCROLLRIGHT, DFCS_SCROLLLEFT), (DFCS_SCROLLLEFT, DFCS_SCROLLRIGHT));
begin
  d:=RowHeights[1]*2;
  if RowHeights[0]<>d then RowHeights[0]:=d;
  if ACol-IndicatorOffset<0 then begin
   inherited;
   exit;
  end;
  DrawColumn := Columns[ACol-IndicatorOffset];
  if (DrawColumn is TFltrColumn)and not(TFltrColumn(DrawColumn).FilterEnabled) then begin
   inherited;
   exit;
  end;
  if (ARow=0) then begin
   ARect.Top:=ARect.Top+(ARect.Bottom-ARect.Top)div 2;
   ARect:=CalcTitleRect(DrawColumn,0,mc);
   Canvas.Font := mc.Title.Font;
   Canvas.Brush.Color := mc.Title.Color;
   Canvas.FillRect(ARect);
   d:=(ARect.Bottom-ARect.Top)div 2;
   ARect.Top:=ARect.Top+d;
   if Assigned(DrawColumn.Field) then begin
    s:=fFilters.Values[DrawColumn.Field.FieldName];
    Canvas.Brush.Color :=FltrEdit.Color;
    Canvas.FillRect(ARect);
    Canvas.TextRect(ARect,ARect.Left+1,ARect.Top+1,s);
   end;
   Canvas.Brush.Color := mc.Title.Color;
   ARect.Top:=ARect.Top-d;
   ARect.Bottom:=ARect.Bottom-d;
   WriteText(Canvas,ARect,0,0,DrawColumn.Title.Caption,DrawColumn.Title.Alignment,false);
  end else begin
    inherited;
  end;
end;


procedure TFilterGrid.EdChng(Sender: TObject);
var
 cl:TFltrColumn;
 s:string;
begin
 cl:=TFltrColumn(FltrEdit.Tag);
 if not Assigned(cl) then exit;
 cl.Field.DataSet.Filtered:=false;
 if Sender=FltrEdit then begin
  if not fAnyKey then exit;
  s:=Trim(FltrEdit.Text);
 end else begin
  s:=cl.CheckValues.Values[FltrCombo.Text];
 end;
 fFilters.Values[cl.Field.FieldName]:=s;
 try
  ResetFilter;
 except
  fFilters.Values[cl.Field.FieldName]:='';
 end;
end;

procedure TFilterGrid.EdExit(Sender: TObject);
begin
 FltrEdit.Visible:=false;
 FltrCombo.Visible:=false;
end;

procedure TFilterGrid.FltrEditKeyPress(Sender: TObject; var Key: Char);
var
 cl:TColumn;
 s:string;
begin
 if (Key<>#13) then exit;
 cl:=TColumn(FltrEdit.Tag);
 s:=Trim(FltrEdit.Text);
 cl.Field.DataSet.Filtered:=false;
 fFilters.Values[cl.Field.FieldName]:=s;
 try
  ResetFilter;
 except
  fFilters.Values[cl.Field.FieldName]:='';
 end;
end;

function TFilterGrid.GetColor: TColor;
begin
 result:=FltrEdit.Color;
end;

function TFilterGrid.GetColumn(Index: Integer): TFltrColumn;
begin
 result:=TFltrColumn(Columns[Index]);
end;

function TFilterGrid.GetFilter(const FieldName: string): string;
begin
 result:=fFilters.Values[FieldName];
end;

procedure TFilterGrid.Loaded;
begin
  inherited;
  FltrEdit.Visible:=false;
end;

procedure TFilterGrid.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
{  if (Operation=opRemove)and(AComponent=DataSource)
  then
   fFilters.Clear;}
end;

procedure TFilterGrid.ResetFilter;
var
 s,f:string;
 i:integer;
begin
 if not(Assigned(DataSource)and Assigned(DataSource.DataSet)) then exit;
 for i:=0 to fFilters.Count-1 do begin
  s:=Trim(fFilters.Values[fFilters.Names[i]]);
  s:=FilterPart(s,DataSource.DataSet.FieldByName(fFilters.Names[i]).DataType);
  if s='' then continue;
  if f<>'' then f:=f+'AND ';
  f:=f+fFilters.Names[i]+' '+s+' ';
 end;
 DataSource.DataSet.Filter:=f;
 DataSource.DataSet.Filtered:=f<>'';
end;

procedure TFilterGrid.SetColor(const Value: TColor);
begin
 FltrEdit.Color:=Value;
end;

procedure TFilterGrid.SetFilter(const FieldName, Value: string);
begin
 fFilters.Values[FieldName]:=Value;
end;

procedure TFilterGrid.TitleClick(Column: TColumn);
var
 mc:TColumn;
 rect:TRect;
 hgh:integer;
 ctrl:TWinControl;
 i:integer;
begin
  inherited;
  FltrCombo.Visible:=false;
  if not(Assigned(DataSource)and Assigned(DataSource.DataSet))or(csDesigning in ComponentState) then exit;
  if (Column is TFltrColumn)and not(TFltrColumn(Column).FilterEnabled) then exit;
  mc:=nil;
  frst:=true;
  rect:=CalcTitleRect(Column,0,mc);
  hgh:=(rect.Bottom-rect.Top)div 2;
  if not(Column is TFltrColumn)or(TFltrColumn(Column).CheckValues.Text='') then begin
    ctrl:=FltrEdit;
    FltrEdit.Parent:=Parent;
    FltrEdit.Text:=fFilters.Values[Column.Field.FieldName];
  end else begin
    ctrl:=FltrCombo;
    FltrCombo.Parent:=Parent;
    FltrCombo.Items.Clear;
    for i:=0 to TFltrColumn(Column).CheckValues.Count-1 do
     FltrCombo.Items.Add(TFltrColumn(Column).CheckValues.Names[i]);
  end;
  ctrl.Left:=Column.Grid.Left+rect.Left;
  ctrl.Top:=Column.Grid.Top+hgh;
  ctrl.Height:=hgh;
  ctrl.Width:=rect.Right-rect.Left;
  ctrl.Visible:=true;
  ctrl.SetFocus;
  ctrl.BringToFront;

  FltrEdit.Tag:=integer(Column);
end;


{ TFltrColumn }

constructor TFltrColumn.Create(Collection: TCollection);
begin
  inherited;
  fValues:=TStringList.Create;
  fEnabled:=true;
end;

destructor TFltrColumn.Destroy;
begin
  fValues.Free;
  inherited;
end;

function TFltrColumn.GetFilter: string;
begin
 result:=TFilterGrid(Grid).Filter[FieldName];
end;

procedure TFltrColumn.SetEnabled(const Value: boolean);
begin
  fEnabled := Value;
  Grid.Refresh;
end;

procedure TFltrColumn.SetFilter(const Value: string);
begin
 TFilterGrid(Grid).Filter[FieldName]:=Value;
end;

procedure TFltrColumn.SetValues(const Value: TStrings);
begin
  fValues.Assign(Value);
end;

end.


