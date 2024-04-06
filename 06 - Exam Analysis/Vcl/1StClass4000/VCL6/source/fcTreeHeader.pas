unit fcTreeHeader;

interface
{$R-}
{$include fcifdef.pas}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, db, extctrls;

type

  TfcTreeHeader = class;
  TfcTreeHeaderControl = class;
  TfcTreeHeaderOption = (thcoAllowColumnMove, thcoSortTreeOnClick, thcoRightBorder);
  TfcTreeHeaderOptions = set of TfcTreeHeaderOption;

  TfcTreeHeaderSection = class(TCollectionItem)
  private
    FFieldName: string;
    FImageIndex: integer;
    FImageAlignment : TAlignment;

    FText: string;
    FWidth: Integer;
    FMinWidth: Integer;
    FMaxWidth: Integer;
    FAlignment: TAlignment;
    FStyle: THeaderSectionStyle;
    FAllowClick: Boolean;

    function GetLeft: Integer;
    function GetRight: Integer;
    procedure SetAlignment(Value: TAlignment);
    procedure SetMaxWidth(Value: Integer);
    procedure SetMinWidth(Value: Integer);
    procedure SetStyle(Value: THeaderSectionStyle);
    procedure SetText(const Value: string);
    procedure SetWidth(Value: Integer);
    procedure SetImageIndex(Value: integer);
    procedure SetImageAlignment(Value: TAlignment);
  protected
    function GetDisplayName: string; override;
  public
    constructor Create(Collection: TCollection); override;
    procedure Assign(Source: TPersistent); override;
    property Left: Integer read GetLeft;
    property Right: Integer read GetRight;
    function PtInSection(pt: TPoint): boolean;
  published
    property Alignment: TAlignment read FAlignment write SetAlignment default taLeftJustify;
    property AllowClick: Boolean read FAllowClick write FAllowClick default True;
    property MaxWidth: Integer read FMaxWidth write SetMaxWidth default 10000;
    property MinWidth: Integer read FMinWidth write SetMinWidth default 0;
    property Style: THeaderSectionStyle read FStyle write SetStyle default hsText;
    property Text: string read FText write SetText;
    property Width: Integer read FWidth write SetWidth;
    property FieldName: string read FFieldName write FFieldName;
    property ImageIndex: integer read FImageIndex write SetImageIndex;
    property ImageAlignment: TAlignment read FImageAlignment write SetImageAlignment default taLeftJustify;
  end;

  TfcTreeHeaderSections = class(TCollection)
  private
    function GetItem(Index: Integer): TfcTreeHeaderSection;
    procedure SetItem(Index: Integer; Value: TfcTreeHeaderSection);
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
  public
    HeaderControl: TfcTreeHeaderControl;
    constructor Create(HeaderControl: TfcTreeHeaderControl);
    function Add: TfcTreeHeaderSection;
    property Items[Index: Integer]: TfcTreeHeaderSection read GetItem write SetItem; default;
  end;

  TfcHeaderDrawSectionEvent = procedure(HeaderControl: TfcTreeHeader;
    Section: TfcTreeHeaderSection; const Rect: TRect; Pressed: Boolean) of object;
  TfcHeaderSectionNotifyEvent = procedure(HeaderControl: TfcTreeHeader;
    Section: TfcTreeHeaderSection) of object;
  TfcHeaderSectionDefaultEvent = procedure(HeaderControl: TfcTreeHeader;
    Section: TfcTreeHeaderSection; var doDefault: boolean) of object;
  TfcHeaderSectionTrackEvent = procedure(HeaderControl: TfcTreeHeader;
    Section: TfcTreeHeaderSection; Width: Integer;
    State: TSectionTrackState) of object;
  TfcSectionDragEvent = procedure (Sender: TObject; FromSection, ToSection: TfcTreeHeaderSection) of object;
  TfcHeaderSectionMoveEvent = procedure(HeaderControl: TfcTreeHeader;
    Section: TfcTreeHeaderSection; DragFrom, DragTo: integer;
    var AllowMove: boolean) of object;

  TfcTreeHeaderControl = class(TWinControl)
  private
    FSections: TfcTreeHeaderSections;
    FSectionDragged: Boolean;
    FCanvas: TCanvas;
    FHotTrack: Boolean;

    FImageList: TImageList;
    FOptions: TfcTreeHeaderOptions;
    FTree: TWinControl; //fcDBCustomTreeView;
    FHeader: TfcTreeHeader;

    function  DoSectionDrag(FromSection, ToSection: TfcTreeHeaderSection): Boolean;
    procedure SetHotTrack(Value: Boolean);
    procedure SetSections(Value: TfcTreeHeaderSections);
    procedure UpdateItem(Message, Index: Integer);
    procedure UpdateSection(Index: Integer);
    procedure UpdateSections;
    procedure SetOptions(val: TfcTreeHeaderOptions);
    procedure SetImageList(val: TImageList);

    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure CNNotify(var Message: TWMNotify); message CN_NOTIFY;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMWindowPosChanged(var Message: TWMWindowPosChanged); message WM_WINDOWPOSCHANGED;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;

  protected
    procedure RearrangeTreeColumns; virtual;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure WndProc(var Message: TMessage); override;
  public
    DesignerForm: TCustomForm;
    HotTrackSection: integer;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Canvas: TCanvas read FCanvas;
    property Tree: TWinControl read FTree write FTree;
    property Header: TfcTreeHeader read FHeader write FHeader;
    property HotTrack: Boolean read FHotTrack write SetHotTrack default False;
    property Images: TImageList read FImageList write SetImageList;
    property Options: TfcTreeHeaderOptions read FOptions write SetOptions
       default [thcoAllowColumnMove, thcoSortTreeOnClick, thcoRightBorder];
    property Sections: TfcTreeHeaderSections read FSections write SetSections;
  end;

  TfcTreeHeader = class(TCustomPanel)
  private
    FOnDrawSection: TfcHeaderDrawSectionEvent;
    FOnResize: TNotifyEvent;
    FOnSectionMove: TfcHeaderSectionMoveEvent;
    FOnSectionClick: TfcHeaderSectionNotifyEvent;
    FOnSectionResize: TfcHeaderSectionNotifyEvent;
    FOnSectionTrack: TfcHeaderSectionTrackEvent;
    FOnSectionDrag: TfcSectionDragEvent;
    FDisableThemes: boolean;

    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message WM_ERASEBKGND;

    procedure SetSections(Value: TfcTreeHeaderSections);
    function GetSections: TfcTreeHeaderSections;
    function GetHotTrack: boolean;
    procedure SetHotTrack(Value: Boolean);
    function GetImageList: TImageList;
    procedure SetImageList(Value: TImageList);
    procedure SetOptions(val: TfcTreeHeaderOptions);
    function GetOptions: TfcTreeHeaderOptions;
    function GetCanvas: TCanvas;
    function GetTree: TWinControl;
    Function GetMouseDown: TMouseEvent;
    procedure SetMouseDown(Value: TMouseEvent);
    Function GetMouseUp: TMouseEvent;
    procedure SetMouseUp(Value: TMouseEvent);
    Function GetMouseMove: TMouseMoveEvent;
    procedure SetMouseMove(Value: TMouseMoveEvent);
  protected
    procedure DrawSection(Section: TfcTreeHeaderSection; const Rect: TRect;
       Pressed: Boolean); dynamic;
    procedure SectionMove(Section: TfcTreeHeaderSection;
              DragFrom, DragTo: integer; var AllowMove: boolean); dynamic;
    procedure SectionClick(Section: TfcTreeHeaderSection); dynamic;
    procedure SectionResize(Section: TfcTreeHeaderSection); dynamic;
    procedure SectionTrack(Section: TfcTreeHeaderSection; Width: Integer;
      State: TSectionTrackState); dynamic;
    procedure SectionDrag(FromSection, ToSection: TfcTreeHeaderSection); dynamic;
  public
    HeaderControl: TfcTreeHeaderControl;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure CreateWnd; override;

    property Canvas: TCanvas read GetCanvas;
    property Tree: TWinControl read GetTree;

  published
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HotTrack: Boolean read GetHotTrack write SetHotTrack default False;
    property Sections: TfcTreeHeaderSections read GetSections write SetSections;
    property ShowHint;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property Visible;
    property Images: TImageList read GetImageList write SetImageList;
    property OnSectionDrag: TfcSectionDragEvent read FOnSectionDrag
      write FOnSectionDrag;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;

    property OnMouseDown: TMouseEvent read GetMouseDown write SetMouseDown;
    property OnMouseMove: TMouseMoveEvent read GetMouseMove write SetMouseMove;
    property OnMouseUp: TMouseEvent read GetMouseUp write SetMouseUp;
    property OnDrawSection: TfcHeaderDrawSectionEvent read FOnDrawSection write FOnDrawSection;
    property OnResize: TNotifyEvent read FOnResize write FOnResize;
    property OnSectionMove: TfcHeaderSectionMoveEvent read FOnSectionMove write FOnSectionMove;
    property OnSectionClick: TfcHeaderSectionNotifyEvent read FOnSectionClick write FOnSectionClick;
    property OnSectionResize: TfcHeaderSectionNotifyEvent read FOnSectionResize write FOnSectionResize;
    property OnSectionTrack: TfcHeaderSectionTrackEvent read FOnSectionTrack write FOnSectionTrack;
    property OnStartDrag;
    property Options: TfcTreeHeaderOptions read GetOptions write SetOptions
       default [thcoAllowColumnMove, thcoSortTreeOnClick, thcoRightBorder];
    property DisableThemes : boolean read FDisableThemes write FDisableThemes default False;

  end;

implementation

uses commctrl, typinfo, fccommon,
  {$ifdef fcDelphi7Up}
  themes,
  {$endif}
  {$ifdef ThemeManager}
  thememgr, themesrv, uxtheme,
  {$endif}
  fcdbtreeview;
  
type
  TfcWriteTextOption = (wtoAmpersandToUnderline, wtoEllipsis, wtoWordWrap, wtoMergeCanvas);
  TfcWriteTextOptions = Set of TfcWriteTextOption;


{3/31/98 - Determine if this is a single line edit control based on passed in rectangle}
Function wwIsSingleLineEdit(AHandle:Integer; Rect: TRect; Flags:Integer): boolean;
var OrigEditHeight,SingleLineEditHeight:Integer;
    S:String;
begin
  Flags := Flags or DT_CALCRECT;

  OrigEditHeight := Rect.Bottom-Rect.Top;

  S:=' ';
  SingleLineEditHeight := DrawText(AHandle,PChar(S),strlen(PChar(S)),Rect,Flags)+
    3 + GetSystemMetrics(SM_CYBORDER) * 2;

  result := OrigEditHeight <= SingleLineEditHeight;
end;

Procedure WriteTextLines(ACanvas: TCanvas;
    const ARect: TRect; DX, DY: Integer; S: PChar; Alignment: TAlignment;
    WriteOptions: TfcWriteTextOptions);
const
  AlignFlags : array [TAlignment] of Integer =
    ( DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS,
      DT_RIGHT or DT_WORDBREAK or DT_EXPANDTABS,
      DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS);
var
  R: TRect;
  Flags: integer;
  ADrawCanvas: TCanvas;
begin
    ADrawCanvas:= ACanvas;

    with ARect do { Use offscreen bitmap to eliminate flicker and }
    begin                     { brush origin tics in painting / scrolling.    }
      if Alignment=taRightJustify then
         R := Rect(1, DY, Right - Left - 5, Bottom - Top - 1)
      else if Alignment=taLeftJustify then
         R := Rect(DX, DY, Right - Left, Bottom - Top - 1)
      else
         R := Rect(0, DY, Right - Left, Bottom - Top - 1);
      R.Left:= R.Left + ARect.Left;
      R.Right:= R.Right + ARect.Left;
//      B := Rect(0, 0, Right - Left, Bottom - Top);
    end;

    with ADrawCanvas do
    begin
      Font := ACanvas.Font;
      Font.Color := ACanvas.Font.Color;
      Brush := ACanvas.Brush;
      Brush.Style := bsSolid;

      {$ifdef fcUseThemeManager}
      if not ThemeServices.ThemesEnabled then
      {$endif}
         FillRect(ARect);

      SetBkMode(Handle, TRANSPARENT);
      Flags:= AlignFlags[Alignment];
      if not (wtoAmpersandToUnderline in WriteOptions) then
         Flags:= Flags or DT_NOPREFIX;

      {3/31/98 - Check to see if this is a single line edit control to
       determine if we should or should not have word breaks}
      if wwIsSingleLineEdit(Handle,R,Flags) or (wtoEllipsis in WriteOptions) then
         Flags := Flags and not DT_WORDBREAK;

      if wtoEllipsis in WriteOptions then
         Flags:= Flags or DT_END_ELLIPSIS;  { If text does not fit then put ellipsis at end }
      DrawText(Handle, S, StrLen(S), R, Flags);
    end;
end;


constructor TfcTreeHeaderSection.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FWidth := 50;
  FMaxWidth := 10000;
  FAllowClick := True;
  FImageIndex:= -1;
  FImageAlignment:= taLeftJustify;
end;

procedure TfcTreeHeaderSection.Assign(Source: TPersistent);
begin
  if Source is TfcTreeHeaderSection then
  begin
    Text := TfcTreeHeaderSection(Source).Text;
    Width := TfcTreeHeaderSection(Source).Width;
    MinWidth := TfcTreeHeaderSection(Source).MinWidth;
    MaxWidth := TfcTreeHeaderSection(Source).MaxWidth;
    Alignment := TfcTreeHeaderSection(Source).Alignment;
    Style := TfcTreeHeaderSection(Source).Style;
    AllowClick := TfcTreeHeaderSection(Source).AllowClick;
    FieldName:= TfcTreeHeaderSection(Source).FieldName;
    Exit;
  end;
  inherited Assign(Source);
end;

function TfcTreeHeaderSection.GetDisplayName: string;
var TempText: string;
begin
  if Text = '' then TempText:= inherited GetDisplayName
  else TempText:= text;
  Result := inttostr(Index) + ' - ' + TempText;
end;

function TfcTreeHeaderSection.GetLeft: Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to Index - 1 do
    Inc(Result, TfcTreeHeaderSections(Collection)[I].Width);
end;

function TfcTreeHeaderSection.PtInSection(pt: TPoint): boolean;
var
  I: Integer;
  StartX, EndX: integer;
begin
  StartX := 0;
  for I := 0 to Index - 1 do
    Inc(StartX, TfcTreeHeaderSections(Collection)[I].Width);
  EndX:= StartX + TfcTreeHeaderSections(Collection)[Index].Width;
  result:= (pt.x>StartX) and (pt.x<EndX);
end;

function TfcTreeHeaderSection.GetRight: Integer;
begin
  Result := Left + Width;
end;

procedure TfcTreeHeaderSection.SetAlignment(Value: TAlignment);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    Changed(False);
  end;
end;

procedure TfcTreeHeaderSection.SetMaxWidth(Value: Integer);
begin
  if Value < FMinWidth then Value := FMinWidth;
  if Value > 10000 then Value := 10000;
  FMaxWidth := Value;
  SetWidth(FWidth);
end;

procedure TfcTreeHeaderSection.SetMinWidth(Value: Integer);
begin
  if Value < 0 then Value := 0;
  if Value > FMaxWidth then Value := FMaxWidth;
  FMinWidth := Value;
  SetWidth(FWidth);
end;

procedure TfcTreeHeaderSection.SetStyle(Value: THeaderSectionStyle);
begin
  if FStyle <> Value then
  begin
    FStyle := Value;
    Changed(False);
  end;
end;

procedure TfcTreeHeaderSection.SetText(const Value: string);
begin
  if FText <> Value then
  begin
    FText := Value;
    Changed(False);
  end;
end;

procedure TfcTreeHeaderSection.SetImageIndex(Value: integer);
begin
   if FImageIndex<>Value then
   begin
      FImageIndex:= Value;
      Changed(False);
   end
end;

procedure TfcTreeHeaderSection.SetImageAlignment(Value: TAlignment);
begin
   if FImageAlignment<>Value then
   begin
      FImageAlignment:= Value;
      Changed(False);
   end
end;


procedure TfcTreeHeaderSection.SetWidth(Value: Integer);
begin
  if Value < FMinWidth then Value := FMinWidth;
  if Value > FMaxWidth then Value := FMaxWidth;
  if FWidth <> Value then
  begin
    FWidth := Value;
    Changed(Index < Collection.Count - 1);
  end;
end;


constructor TfcTreeHeaderSections.Create(HeaderControl: TfcTreeHeaderControl);
begin
  inherited Create(TfcTreeHeaderSection);
  self.HeaderControl := HeaderControl;
end;

function TfcTreeHeaderSections.Add: TfcTreeHeaderSection;
begin
  Result := TfcTreeHeaderSection(inherited Add);
end;

function TfcTreeHeaderSections.GetItem(Index: Integer): TfcTreeHeaderSection;
begin
  Result := TfcTreeHeaderSection(inherited GetItem(Index));
end;

function TfcTreeHeaderSections.GetOwner: TPersistent;
begin
  Result := HeaderControl;
end;

procedure TfcTreeHeaderSections.SetItem(Index: Integer; Value: TfcTreeHeaderSection);
begin
  inherited SetItem(Index, Value);
end;

procedure TfcTreeHeaderSections.Update(Item: TCollectionItem);
begin
  if Item <> nil then
    HeaderControl.UpdateSection(Item.Index) else
    HeaderControl.UpdateSections;
end;


procedure TfcTreeHeaderControl.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) then
  begin
     if AComponent = Tree then Tree:= nil;
     if AComponent = FImageList then FImageList:= nil;
  end
end;

constructor TfcTreeHeaderControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [];
  Align := alTop;
  Align := alNone;
  Height := 17;
  FSections := TfcTreeHeaderSections.Create(Self);
  FCanvas := TControlCanvas.Create;
  TControlCanvas(FCanvas).Control := Self;
  FOptions:= [thcoAllowColumnMove, thcoSortTreeOnClick, thcoRightBorder];
  HotTrackSection:= -1;

end;

destructor TfcTreeHeaderControl.Destroy;
begin
  FCanvas.Free;
  FSections.Free;
  DesignerForm.Free;
  inherited Destroy;
end;

procedure TfcTreeHeaderControl.CreateParams(var Params: TCreateParams);
const HDS_DRAGDROP = $0040; {W2W}
begin
  InitCommonControl(ICC_LISTVIEW_CLASSES);
  inherited CreateParams(Params);
  CreateSubClass(Params, 'SysHeader32');
  with Params do
  begin
    Style := Style or HDS_BUTTONS;
    if FHotTrack then Style := Style or HDS_HOTTRACK;
    WindowClass.style := WindowClass.style and not (CS_HREDRAW or CS_VREDRAW);
  end;

  if thcoAllowColumnMove in Options then
     Params.Style := Params.Style or HDS_DRAGDROP; { W2W}
end;

procedure TfcTreeHeaderControl.CreateWnd;
begin
  inherited CreateWnd;
  UpdateSections;
end;

procedure TfcTreeHeader.DrawSection(Section: TfcTreeHeaderSection;
  const Rect: TRect; Pressed: Boolean);
begin
  if Assigned(FOnDrawSection) then
    FOnDrawSection(self, Section, Rect, Pressed) else
    HeaderControl.FCanvas.FillRect(Rect);
end;

procedure TfcTreeHeader.SectionMove(Section: TfcTreeHeaderSection;
              DragFrom, DragTo: integer; var AllowMove: boolean);
begin
  if Assigned(FOnSectionMove) then
     FOnSectionMove(Self, Section, DragFrom, DragTo, AllowMove);
end;

procedure TfcTreeHeader.SectionClick(Section: TfcTreeHeaderSection);
begin
  if Assigned(FOnSectionClick) then FOnSectionClick(Self, Section);
end;

procedure TfcTreeHeader.SectionResize(Section: TfcTreeHeaderSection);
begin
  if Assigned(FOnSectionResize) then FOnSectionResize(Self, Section);
  if HeaderControl.Tree<>Nil then
  begin
     TfcDBCustomTreeView(HeaderControl.Tree).LayoutChanged;  // Horz Scrollbar needs to be adjusted
  end;
end;

procedure TfcTreeHeader.SectionTrack(Section: TfcTreeHeaderSection;
  Width: Integer; State: TSectionTrackState);
begin
  if Assigned(FOnSectionTrack) then FOnSectionTrack(Self, Section, Width, State);
end;

procedure TfcTreeHeaderControl.SetHotTrack(Value: Boolean);
begin
  if FHotTrack <> Value then
  begin
    FHotTrack := Value;
    RecreateWnd;
  end;
end;

procedure TfcTreeHeaderControl.SetSections(Value: TfcTreeHeaderSections);
begin
  FSections.Assign(Value);
end;

procedure TfcTreeHeaderControl.UpdateItem(Message, Index: Integer);
var
  Item: THDItem;
begin
  with Sections[Index] do
  begin
    FillChar(Item, SizeOf(Item), 0);
    Item.mask := HDI_WIDTH or HDI_TEXT or HDI_FORMAT;
    Item.cxy := Width;
    Item.pszText := PChar(Text);
    Item.cchTextMax := Length(Text);
    case Alignment of
      taLeftJustify: Item.fmt := HDF_LEFT;
      taRightJustify: Item.fmt := HDF_RIGHT;
    else
      Item.fmt := HDF_CENTER;
    end;
    if True or (Style = hsOwnerDraw) then
      Item.fmt := Item.fmt or HDF_OWNERDRAW else
      Item.fmt := Item.fmt or HDF_STRING;
    SendMessage(Handle, Message, Index, Integer(@Item));
  end;
end;

procedure TfcTreeHeaderControl.UpdateSection(Index: Integer);
begin
  if HandleAllocated then UpdateItem(HDM_SETITEM, Index);
end;

procedure TfcTreeHeaderControl.UpdateSections;
var
  I: Integer;
begin
  if HandleAllocated then
  begin
    for I := 0 to SendMessage(Handle, HDM_GETITEMCOUNT, 0, 0) - 1 do
      SendMessage(Handle, HDM_DELETEITEM, 0, 0);
    for I := 0 to Sections.Count - 1 do UpdateItem(HDM_INSERTITEM, I);
  end;
end;

procedure TfcTreeHeaderControl.CNDrawItem(var Message: TWMDrawItem);
var
  SaveIndex: Integer;
  pressed: boolean;
  offset: integer;
  Section: TfcTreeHeaderSection;
  tempRect: TRect;
  TopPosition: integer;
  RequiredSpace: integer;
  TextRect, ImageRect: TRect;
  ImageListWidth: Integer;
  pt: TPoint;
  {$ifdef fcUseThemeManager}
  Details: TThemedElementDetails;
  {$endif}
begin
  with Message.DrawItemStruct^ do
  begin
    SaveIndex := SaveDC(hDC);
    FCanvas.Handle := hDC;
    FCanvas.Font := Font;
    FCanvas.Brush.Color := clBtnFace;
    FCanvas.Brush.Style := bsSolid;

    GetCursorPos(pt);
    pt:=  ScreenToClient(pt);

    pressed:= itemState and ODS_SELECTED <> 0;

    if fcUseThemes(self) then //ThemeServices.ThemesEnabled then
    begin
       {$ifdef fcUseThemeManager}
       if (HotTrackSection>=0) and PtInRect(rcItem, pt) then
       begin
         if pressed then
            Details := ThemeServices.GetElementDetails(thHeaderItemPressed)
         else
            Details := ThemeServices.GetElementDetails(thHeaderItemHot)
       end
       else
         Details := ThemeServices.GetElementDetails(thHeaderItemNormal);
       ThemeServices.DrawElement(Canvas.Handle, Details, rcItem);
       {$endif}
//       exit;
    end;


    if HotTrack and (HotTrackSection>=0) then begin
       if (HotTrackSection>=0) and PtInRect(rcItem, pt) then
       begin
          FCanvas.Font.Color:= clBlue;
       end;
    end;

    if Assigned(Header.FOnDrawSection) then
       try
          Header.DrawSection(Sections[itemID], rcItem,
             itemState and ODS_SELECTED <> 0);
       finally
       end;

    begin
       Section:= Sections[itemID];
       if pressed then offset:= 1 else offset:= 0;

       tempRect:= rcItem;

       if Section.ImageIndex<0 then
         ImageListWidth:= 0
       else if Images=nil then ImageListWidth:=0
       else ImageListWidth:= Images.Width+1;
       RequiredSpace:= Canvas.TextWidth(Section.Text) + ImageListWidth;
       TextRect:= tempRect;
       ImageRect:= TempRect;

       case Section.Alignment of
          taLeftJustify:
             if Section.ImageAlignment = taLeftJustify then
             begin
                TextRect.Left:= TempRect.Left + offset + ImageListWidth + 4;
                TextRect.Right:= TextRect.Left + Canvas.TextWidth(Section.Text) + 2;
                ImageRect.Left:= TempRect.Left + 4 + offset;
                ImageRect.Right:= ImageRect.Left + ImageListWidth;
             end
             else begin
                TextRect.Left:= TempRect.Left+offset + 4;
                TextRect.Right:= TextRect.Left + Canvas.TextWidth(Section.Text) + 2;
                ImageRect.Left:= TextRect.Right + 2;
                ImageRect.Right:= ImageRect.Left + ImageListWidth;
             end;

          taRightJustify:
             if Section.ImageAlignment = taLeftJustify then
             begin
                TextRect.Right:= TextRect.Right - 4;
                TextRect.Left:= TextRect.Right+offset-2-Canvas.TextWidth(Section.Text);
                ImageRect.Right:= TextRect.Left - 2;
                ImageRect.Left:= ImageRect.Right - ImageListWidth;
             end
             else begin
                TextRect.Right:= TextRect.Right - ImageListWidth - 4;
                TextRect.Left:= TextRect.Right+offset-2-Canvas.TextWidth(Section.Text);
                ImageRect.Right:= ImageRect.Right;
                ImageRect.Left:= ImageRect.Right - ImageListWidth - 2 + offset;
             end;

          taCenter:
             if Section.ImageAlignment = taLeftJustify then
             begin
                ImageRect.Left:= TextRect.Left + offset + ((TempRect.Right-TempRect.Left) - RequiredSpace) div 2;
                ImageRect.Right:= ImageRect.Left + ImageListWidth;
                TextRect.Left:= ImageRect.Right + 1;
                TextRect.Right:= TextRect.Left + Canvas.TextWidth(Section.Text) + 2;
             end
             else begin
                TextRect.Left:= TextRect.Left + offset + ((TempRect.Right-TempRect.Left) - RequiredSpace) div 2;
                TextRect.Right:= TextRect.Left + Canvas.TextWidth(Section.Text) + 2;
                ImageRect.Left:= TextRect.Right + 2;
                ImageRect.Right:= ImageRect.Left + ImageListWidth;
             end;

       end;

       if (Images<>Nil) and (Section.ImageIndex>=0) then
       begin
          TopPosition:= rcItem.Top + offset + (rcItem.Bottom - rcItem.Top - Images.Height) div 2;
          Images.Draw(Canvas, ImageRect.Left, TopPosition, Section.ImageIndex);
       end;

       WriteTextLines(Canvas, TextRect, 0, 2+offset, PChar(Section.Text),
                taLeftJustify,
                 [wtoAmpersandToUnderline, wtoEllipsis]);

{      if ThemeServices.ThemesEnabled and False then
       begin
         Details := ThemeServices.GetElementDetails(ttbSeparatorNormal);
         TempRect:= rcItem;
         TempRect.Left:= TempRect.Left - 2;
         ThemeServices.DrawElement(Canvas.Handle, Details, TempRect);
       end;
}
    end;

    FCanvas.Handle := 0;
    RestoreDC(hDC, SaveIndex);
  end;

  Message.Result := 1;
end;

procedure TfcTreeHeaderControl.RearrangeTreeColumns;
var s:string;
    i:integer;
    OldDisplayFieldCount: integer;
    fldName: string;
begin
  s:='';
  for i:=0 to Sections.count-1 do begin
     fldName:= Sections[i].FieldName;
     if fldName = '' then
       fldName:= Sections[i].Text;
     s:=s+'"'+Sections[i].FieldName+'"';
     if I<> Sections.Count-1 then
        s:=s+'#9';
  end;

  OldDisplayFieldCount:= TfcDBTreeView(Tree).displayfields.count;
  TfcDBTreeView(Tree).DisplayFields.Clear;
  for i:= 0 to OldDisplayFieldCount-1 do
     TfcDBTreeView(Tree).displayfields.Add(s);
  Tree.invalidate;
end;

procedure TfcTreeHeaderControl.CNNotify(var Message: TWMNotify);
const HDN_BEGINDRAG = HDN_FIRST - 10;
      HDN_BEGINTRACK = HDN_FIRST - 6;
      HDN_ENDDRAG = HDN_FIRST - 11;
      HDM_ORDERTOINDEX = HDM_FIRST + 15;
      HDM_GETORDERARRAY = HDM_FIRST + 17;
      HDI_ORDER = $0080;
type
  TfcHDItem = packed record
    Mask: Cardinal;
    cxy: Integer;
    pszText: PAnsiChar;
    hbm: HBITMAP;
    cchTextMax: Integer;
    fmt: Integer;
    lParam: LPARAM;
    iImage: integer;
    iOrder: integer;
  end;
  PwwHDItem = ^TfcHDItem;
var
  Section: TfcTreeHeaderSection;
  TrackState: TSectionTrackState;
//  OrderArray: array[0..40] of integer;
  dragFrom, dragto: integer;
  AllowMove: boolean;
  MsgPos: Longint;
  hdhti: THDHitTestInfo;
  hdi: THDItem;
//  FFromIndex, FToIndex: integer;
begin
  with PHDNotify(Message.NMHdr)^ do
    case Hdr.code of
      HDN_BEGINDRAG: begin
         end;
      HDN_ENDDRAG: begin
          if (PwwHDItem(PItem)^.mask and HDI_ORDER)<>0 then  {Checks if ComCtrl supports this}
          begin
             Message.Result := 0;
             MsgPos := GetMessagePos;
             hdhti.Point.X := MsgPos and $FFFF;
             Windows.ScreenToClient(Handle, hdhti.Point);
             hdhti.Point.Y := ClientHeight div 2;
             SendMessage(Handle, HDM_HITTEST, 0, Integer(@hdhti));
             hdi.Mask := HDI_ORDER;
             DragTo:= 0;
             if hdhti.Item < 0 then
               if (HHT_TOLEFT and hdhti.Flags) <> 0 then
                 DragTo := 0
               else begin
                 if ((HHT_TORIGHT and hdhti.Flags) <> 0)
                 or ((HHT_NOWHERE and hdhti.Flags) <> 0) then
                   DragTo := Sections.Count - 1
               end
             else begin
               Header_GetItem(Handle, hdhti.Item, hdi);
               DragTo := hdi.iOrder;
             end;
             if DragTo<0 then exit;
             AllowMove:= True;

             Header_GetItem(Handle, Item, hdi);
             DragFrom := hdi.iOrder;

             Header.SectionMove(Sections[Item], DragFrom, DragTo, AllowMove);
             FSectionDragged:= AllowMove;
             if AllowMove then
             begin
//                Header_GetItem(Handle, Item, hdi);
//                DragFrom := hdi.iOrder;
                Sections[DragFrom].index:= DragTo;
//                FSectionDragged :=
                   DoSectionDrag(Sections[DragFrom], Sections[DragTo]);
                if Tree<>Nil then
                begin
                   RearrangeTreeColumns;
                   Tree.invalidate; { W2W - Invalidate TreeView when header is moved }
                end
             end;
          end;
          Message.result:= 1; { Don't do default processing }
       end;
      HDN_ITEMCLICK:
        Header.SectionClick(Sections[Item]);
      HDN_ITEMCHANGED:
        if PItem^.mask and HDI_WIDTH <> 0 then
        begin
          Section := Sections[Item];
          if Section.FWidth <> PItem^.cxy then
          begin
            Section.FWidth := PItem^.cxy;
            Header.SectionResize(Section);
          end;
        end;
      HDN_BEGINTRACK, HDN_TRACK, HDN_ENDTRACK:
        begin
          Section := Sections[Item];
          case Hdr.code of
            HDN_BEGINTRACK: TrackState := tsTrackBegin;
            HDN_ENDTRACK: TrackState := tsTrackEnd;
          else
            TrackState := tsTrackMove;
          end;
          with PItem^ do
          begin
            if cxy < Section.MinWidth then cxy := Section.MinWidth;
            if cxy > Section.MaxWidth then cxy := Section.MaxWidth;
            Header.SectionTrack(Sections[Item], cxy, TrackState);
          end;
        end;
    end;

end;

procedure TfcTreeHeaderControl.WMLButtonDown(var Message: TWMLButtonDown);
var
  Index: Integer;
  Info: THDHitTestInfo;
begin
  Info.Point.X := Message.Pos.X;
  Info.Point.Y := Message.Pos.Y;
  Index := SendMessage(Handle, HDM_HITTEST, 0, Integer(@Info));
  if (Index < 0) or (Info.Flags and HHT_ONHEADER = 0) or
    Sections[Index].AllowClick then inherited;
end;

procedure TfcTreeHeader.WMSize(var Message: TWMSize);
begin
  inherited;
  if not (csLoading in ComponentState) then Resize;
  HeaderControl.Width:= Width -HeaderControl.Left;
  HeaderControl.Height:= Height;
end;

procedure TfcTreeHeaderControl.WMWindowPosChanged(var Message: TWMWindowPosChanged);
begin
  inherited;
  Invalidate;
end;

{ Support design time sizing of the header sections }
procedure TfcTreeHeaderControl.WndProc(var Message: TMessage);
var hti: THDHitTestInfo;
    pt: TPoint;
    i: integer;
begin
  if csDesigning in ComponentState then begin
     case Message.Msg of
       WM_LBUTTONDOWN: begin
            hti.Point.x:= TWMMouse(Message).xpos;
            hti.Point.y:= TWMMouse(Message).ypos;
            SendMessage(Handle, HDM_HITTEST, 0, longint(@hti));
            if (hti.flags and HHT_ONDIVIDER)<>0 then begin
               GetParentForm(self).Designer.modified;
               Dispatch(Message);
               exit;
            end
         end;

       WM_LBUTTONUP:
         begin
            Dispatch(Message);
            exit;
         end;

       WM_MOUSEMOVE:
         begin
            Dispatch(Message);
            exit;
         end;
     end;
     inherited;
  end

  else begin
     case Message.Msg of
       WM_MOUSEMOVE:
         begin
           if HotTrack or fcUseThemes(self) then begin //ThemeServices.ThemesEnabled then begin
              GetCursorPos(pt);
              pt:=  ScreenToClient(pt);
              begin
                for i:= 0 to Sections.count-1 do begin
                   if Sections[i].PtInSection(pt) then
                   begin
                      if HotTrackSection<>i then
                      begin
                         HotTrackSection:= i;
                         invalidate;
                      end
                   end
                 end;
              end;
           end;
       end
     end;
     inherited;
  end;
end;

procedure TfcTreeHeaderControl.SetOptions(val: TfcTreeHeaderOptions);
begin
   if FOptions<>val then
   begin
      FOptions:= val;
      RecreateWnd;
   end;
end;

procedure TfcTreeHeaderControl.SetImageList(val: TImageList);
begin
   FImageList:= Val;
   Invalidate;
end;

procedure TfcTreeHeaderControl.WMPaint(var Message: TWMPaint);
begin
   inherited;

   if thcoRightBorder in Options then
   begin
      Canvas.MoveTo(ClientRect.Right-1, 0);
      Canvas.LineTo(ClientRect.Right-1, ClientRect.Bottom);
   end;
end;

function TfcTreeHeaderControl.DoSectionDrag(FromSection, ToSection: TfcTreeHeaderSection): Boolean;
begin
  Result := True;
  Header.SectionDrag(FromSection, ToSection);
end;


procedure TfcTreeHeader.SectionDrag(FromSection, ToSection: TfcTreeHeaderSection);
begin
  if Assigned(FOnSectionDrag) then FOnSectionDrag(Self, FromSection, ToSection)
end;

constructor TfcTreeHeader.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   HeaderControl:= TfcTreeHeaderControl.create(self);
   HeaderControl.Header:= self;
   Align:= alTop;
   HeaderControl.Left:= 0;
   HeaderControl.Top:= 0;
   HeaderControl.Width:= Width;
   HeaderControl.Height:= Height;
end;

procedure TfcTreeHeader.CreateWnd;
begin
   inherited CreateWnd;
   HeaderControl.parent:= self;
   HeaderControl.align:= alNone;
end;

destructor TfcTreeHeader.Destroy;
begin
  HeaderControl.Free;
  inherited Destroy;
end;

procedure TfcTreeHeader.SetSections(Value: TfcTreeHeaderSections);
begin
   HeaderControl.Sections.Assign(Value);
end;

function TfcTreeHeader.GetSections: TfcTreeHeaderSections;
begin
   result:= HeaderControl.Sections;
end;

function TfcTreeHeader.GetHotTrack: boolean;
begin
  result:= HeaderControl.HotTrack;
end;

procedure TfcTreeHeader.SetHotTrack(Value: Boolean);
begin
   HeaderControl.HotTrack:= value;
end;

function TfcTreeHeader.GetImageList: TImageList;
begin
   result:= HeaderControl.Images;
end;

procedure TfcTreeHeader.SetImageList(Value: TImageList);
begin
   HeaderControl.Images:= Value;
end;

procedure TfcTreeHeader.SetOptions(val: TfcTreeHeaderOptions);
begin
   HeaderControl.Options:= val;
end;

function TfcTreeHeader.GetOptions: TfcTreeHeaderOptions;
begin
   result:= HeaderControl.Options;
end;

function TfcTreeHeader.GetCanvas: TCanvas;
begin
  result:= HeaderControl.Canvas;
end;

function TfcTreeHeader.GetTree: TWinControl;
begin
   result:= HeaderControl.Tree;
end;

procedure TfcTreeHeaderControl.CMMouseEnter(var Message: TMessage);
begin
  inherited;
end;

procedure TfcTreeHeaderControl.CMMouseLeave(var Message: TMessage);
var r:TRect;
    pt:TPoint;
begin
  GetCursorPos(pt);
  pt := ScreenToClient(pt);
  r := ClientRect;
  if (PtInRect(r,pt)) then exit;

  if HotTrack or fcUseThemes(self) then begin//ThemeServices.ThemesEnabled then begin
     HotTrackSection:=-1;
     invalidate;
  end;

  inherited;
end;


Function TfcTreeHeader.GetMouseDown: TMouseEvent;
begin
   result:= HeaderControl.OnMouseDown;
end;

procedure  TfcTreeHeader.SetMouseDown(Value: TMouseEvent);
begin
   HeaderControl.OnMouseDown:= Value;
end;

Function TfcTreeHeader.GetMouseUp: TMouseEvent;
begin
   result:= HeaderControl.OnMouseUp;
end;

procedure  TfcTreeHeader.SetMouseUp(Value: TMouseEvent);
begin
   HeaderControl.OnMouseUp:= Value;
end;

Function TfcTreeHeader.GetMouseMove :TMouseMoveEvent;
begin
   result:= HeaderControl.OnMouseMove;
end;

procedure  TfcTreeHeader.SetMouseMove(Value: TMouseMoveEvent);
begin
   HeaderControl.OnMouseMove:= Value;
end;

procedure TfcTreeHeader.WMEraseBkgnd(var Message: TWMEraseBkgnd);
//var
//  Details: TThemedElementDetails;
begin
{  if ThemeServices.ThemesEnabled then
  begin
    Details := ThemeServices.GetElementDetails(thHeaderRoot);
    ThemeServices.DrawElement(Message.DC, Details, ClientRect, nil);
    Message.Result := 1;
  end
  else}
    inherited;
end;

end.



