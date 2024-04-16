{
  BiDiMode and XCalendar support for some "TMS Planner" controls
  by adgteq
}

{***********************************************************************}
{ TPlannerCalendar component                                            }
{ for Delphi & C++ Builder                                              }
{ version 1.7                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2007                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{                                                                       }
{ The source code is given as is. The author is not responsible         }
{ for any possible damage done due to the use of this code.             }
{ The component can be freely used in any application. The source       }
{ code remains property of the writer and may not be distributed        }
{ freely as such.                                                       }
{***********************************************************************}

{$I TMSDEFS.INC}

{$IFNDEF TMSDOTNET}
{$DEFINE USEIMAGE}
{$ENDIF}

unit xcalPlannerCal;

interface

uses
//xxx
  xcalClass, xcalEvents,
  Windows, SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, xcalAdvStyleIF
{$IFDEF USEIMAGE}
  , xcalAdvImage
{$ENDIF}
{$IFDEF TMSDOTNET}
  , uxTheme, System.Text, System.Runtime.InteropServices
{$ENDIF}
  ;

const
  adaysinmonth: array[1..13] of word = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31, 29);
  monames: array[1..12] of string[5] = ('JAN', 'FEB', 'MAR', 'APR',
    'MAY', 'JUNE', 'JULY', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC');
//mmm  selstr = 'Select month';
//mmm  labelx = 30;
//mmm  labelw = 65;
//  CW = 16;
//xxx  everything about YearStartAt, NameOfDays, NameOfMonths removed

  MAJ_VER = 1; // Major version nr.
  MIN_VER = 7; // Minor version nr.
  REL_VER = 4; // Release nr.
  BLD_VER = 0; // Build nr.

  // Version history
  // 1.4.0.0 : Property InActiveDays added
  // 1.5.0.0 : AutoThemeAdapt property added
  // 1.5.0.1 : improved event font color initialisation
  //         : improved mouse handling for browser glyphs
  // 1.6.0.0 : New : ISO Week number support added (YearStartAt.ISOWeekNumber)
  //           New : OnCellDraw event added for TPlannerCalendarGroup
  //           New : OnDblClick event added for TPlannerCalendarGroup
  //           New : VS.NET (Whidbey) appearance style
  // 1.6.0.1 : Fixed issue with TSelDateItem.Assign
  // 1.6.5.0 : New: ShowMonthSelector property added
  //         : New: ShowYearSelector property added
  //         : New: Enable property added
  // 1.6.6.0 : New: OnDragOver, OnDragDrop, OnEndDrag, OnStartDrag added in TPlannerCalendarGroup
  // 1.6.6.1 : Fixed: issue with SelDate parameter in OnDaySelect
  // 1.6.6.2 : Fixed: painting issue with hovering and ShowGotoToday = true
  // 1.6.6.3 : Fixed: issue with date selection in TPlannerCalendarGroup
  // 1.6.6.4 : Fixed: issue with prev month glyph & Browsers.PrevYear = false
  // 1.6.6.5 : Fixed: issue with gradient direction
  // 1.6.6.6 : Fixed: issue with multiselect in PlannerCalendarGroup
  //         : Improved: property storage
  // 1.7.0.0 : New : Style interface added
  //         : New : FirstDate, LastDate functions added in TPlannerCalendar
  //         : New : FirstDate, LastDate, MonthCount added in TPlannerCalendarGroup
  // 1.7.0.1 : Fixed issue with changing StartMonth, StartYear from OnDaySelect in TPlannerCalendarGroup
  // 1.7.1.0 : Added property MultiSelectCtrlKey
  // 1.7.1.1 : Fixed : issue with OnGetDateHintString
  // 1.7.1.2 : Fixed : issue with dbl click handling
  // 1.7.1.3 : Fixed: issue with custom prev month glyph position
  // 1.7.2.0 : New : TabStop, TabOrder properties added on TPlannerCalendarGroup
  // 1.7.3.0 : New : support for Office 2007 silver style added
  // 1.7.3.1 : Fixed : issue with ShowMonthSelector, ShowYearSelector in TPlannerCalendarGroup
  // 1.7.3.2 : Fixed : issue with display update on font change in TPlannerCalendarGroup
  // 1.7.3.3 : Fixed : painting issue with D2007
  // 1.7.4.0 : Improved : OnMouseMove, OnMouseDown, OnMouseUp event handler for TPlannerCalendarGroup

type
  TXCalCustomCalendarPanel = class;
  TXCalPlannerCalendar = class;

  TDayStr = string;
  TMonthStr = string;

  TDayArray = array[1..14] of TDayStr;
  TMonthArray = array[1..12] of TMonthStr;

  TBackGroundPosition = (bpTopLeft, bpTopRight, bpBottomLeft, bpBottomRight,
    bpTiled, bpStretched, bpCenter);

  TDaySelectEvent = procedure(Sender: TObject; SelDate: TDateTime) of object;
  TDateChangeEvent = procedure(Sender: TObject; origDate, newDate: TDateTime) of object;

  TCancelledChangeEvent = procedure(Sender: TObject; CancelledDate: TDateTime) of object;

  TCancelledKeyEvent = procedure(Sender:TObject; Key: word) of object;

  {$IFNDEF TMSDOTNET}
  TCellDrawEvent = procedure ( Sender : TObject ; Canvas : TCanvas ; Day : TDate ;
                                  Selected , Marked , InMonth : Boolean;
                                  Rect : TRect ) of object;
  {$ENDIF}
  {$IFDEF TMSDOTNET}
  TCellDrawEvent = procedure ( Sender : TObject ; Canvas : TCanvas ; Day : TDateTime ;
                                  Selected , Marked , InMonth : Boolean;
                                  Rect : TRect ) of object;
  {$ENDIF}

  TGetDateEvent = procedure(Sender: TObject; dt: tdatetime; var isEvent: Boolean) of object;

  TGetDateEventHint = procedure(Sender: TObject; dt: tdatetime;
    var isEvent: Boolean; var EventHint: string) of object;

  TEventShape = (evsRectangle, evsCircle, evsSquare, evsTriangle, evsNone);
  TGradientDirection = (gdHorizontal, gdVertical);

  TTodayStyle = (tsSunken, tsRaised, tsFlat);

  TPlannerCalendarStyle = (psWindowsXP, psOffice2000, psOffice2003Blue, psOffice2003Olive, psOffice2003Silver, psOffice2003Classic, psFlat, psAvantGarde, psWhidbey, psOffice2007Luna, psOffice2007Obsidian, psCustom, psOffice2007Silver);

  TWeekDays = class(TPersistent)
  private
    FSat: Boolean;
    FSun: Boolean;
    FMon: Boolean;
    FTue: Boolean;
    FWed: Boolean;
    FThu: Boolean;
    FFri: Boolean;
    FChanged: TNotifyEvent;
    procedure SetSat(const Value: Boolean);
    procedure SetSun(const Value: Boolean);
    procedure SetMon(const Value: Boolean);
    procedure SetTue(const Value: Boolean);
    procedure SetWed(const Value: Boolean);
    procedure SetThu(const Value: Boolean);
    procedure SetFri(const Value: Boolean);
    procedure Changed;
  public
    constructor Create;
  published
    property Sat: Boolean read FSat write SetSat default False;//xxx true;
    property Sun: Boolean read FSun write SetSun default False;//xxx true;
    property Mon: Boolean read FMon write SetMon default false;
    property Tue: Boolean read FTue write SetTue default false;
    property Wed: Boolean read FWed write SetWed default false;
    property Thu: Boolean read FThu write SetThu default false;
    property Fri: Boolean read FFri write SetFri default false;
    property OnChanged: TNotifyEvent read FChanged write FChanged;
  end;

  TSelDateItem = class(TCollectionItem)
  private
    FDate: TDateTime;
    FHint: string;
    FColor: TColor;
    FEventShape: TEventShape;
    FFontColor: TColor;
    FObject: TObject;
    FTag: Integer;
    procedure SetDate(const Value: TDateTime);
    procedure SetColor(const Value: TColor);
    procedure SetEventShape(const Value: TEventShape);
    procedure Changed;
    procedure SetFontColor(const Value: TColor);
    procedure SetHint(const Value: string);
  public
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    property Date: TDateTime read FDate write SetDate;
    property Hint: string read FHint write SetHint;
    property FontColor: TColor read FFontColor write SetFontColor;
    property Color: TColor read FColor write SetColor;
    property Shape: TEventShape read FEventShape write SetEventShape;
    property ItemObject: TObject read FObject write FObject;
    property Tag: Integer read FTag write FTag;
  end;

  TEventProp = class(TSelDateItem);

  TSelDateItems = class(TCollection)
  private
    FOwner: TXCalCustomCalendarPanel;
    FUpdateCount: integer;
    FOnChange: TNotifyEvent;
    FVisible: Boolean;
    function GetItem(Index: integer): TSelDateItem;
    procedure SetItem(Index: integer; Value: TSelDateItem);
    procedure DoPaint;
    function GetDate(dt: TDateTime): TSelDateItem;
  protected
    procedure Update(Item: TCollectionItem); override;
  public
    function IsInList(da, mo, ye: integer): integer;
    function IsDateInList(dt: TDateTime): integer;
    constructor Create(AOwner: TXCalCustomCalendarPanel);
    function Add: TSelDateItem;
    function Insert(Index: integer): TSelDateItem;
    property Items[Index: integer]: TSelDateItem read GetItem write SetItem;
    property Dates[dt: TDateTime]: TSelDateItem read GetDate;
    procedure AddRange(dt1, dt2: TDateTime);
    procedure AddRangeSC(dt1, dt2: TDateTime; Shp: TEventShape; Clr: TColor); // New method
    procedure DelRange(dt1, dt2: TDateTime);
    procedure AddRangeHint(dt1, dt2: TDateTime; Hint: string);
    procedure AddRangeHintSC(dt1, dt2: TDateTime; Hint: string; Shp: TEventShape; Clr: TColor); // New method
    procedure StartUpdate;
    procedure StopUpdate;
    procedure ResetUpdate;
    procedure RepaintDate(ADate: TDateTime);
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property Visible: Boolean read FVisible write FVisible;

    {$IFDEF TMSDOTNET}
    property UpdateCount : integer read FUpdateCount write FUpdateCount;
    {$ENDIF}
  end;

  TEventPropEvent = procedure(Sender: TObject; dt: tdatetime; var Event: TEventProp) of object;

  TMinMaxDate = class(TPersistent)
  private
    FOwner: TXCalPlannerCalendar;
    FDay: smallint;
    FMonth: smallint;
    FYear: smallint;
    FUse: Boolean;
    procedure SetDay(avalue: smallint);
    procedure SetMonth(avalue: smallint);
    procedure SetYear(avalue: smallint);
    procedure SetUse(avalue: Boolean);
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
  public
    constructor Create(aOwner: TXCalPlannerCalendar);
    property Date: TDateTime read GetDate write SetDate;
  published
    property Day: smallint read fDay write SetDay default 0;
    property Month: smallint read fMonth write SetMonth default 0;
    property Year: smallint read fYear write SetYear default 0;
    property Use: Boolean read fUse write SetUse default false;
  end;

  TCalGlyphs = class(TPersistent)
  private
    FOwner: TComponent;
    FNextYear: TBitmap;
    FPrevYear: TBitmap;
    FNextMonth: TBitmap;
    FPrevMonth: TBitmap;
    FOnChange: TNotifyEvent;
    procedure SetNextYear(const Value: TBitmap);
    procedure SetPrevYear(const Value: TBitmap);
    procedure SetPrevMonth(const Value: TBitmap);
    procedure SetNextMonth(const Value: TBitmap);
    procedure Changed(Sender: TObject);
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
  published
    property NextMonth: TBitmap read FNextMonth write SetNextMonth;
    property PrevMonth: TBitmap read FPrevMonth write SetPrevMonth;
    property NextYear: TBitmap read FNextYear write SetNextYear;
    property PrevYear: TBitmap read FPrevYear write SetPrevYear;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  TCalendarBrowsers = class(TPersistent)
  private
    FPrevMonth: Boolean;
    FNextMonth: Boolean;
    FPrevYear: Boolean;
    FNextYear: Boolean;
    FOnChange: TNotifyEvent;
    procedure SetNextMonth(const Value: Boolean);
    procedure SetNextYear(const Value: Boolean);
    procedure SetPrevMonth(const Value: Boolean);
    procedure SetPrevYear(const Value: Boolean);
  public
    constructor Create;
    procedure Changed;
  published
    property PrevMonth: Boolean read FPrevMonth write SetPrevMonth default True;
    property PrevYear: Boolean read FPrevYear write SetPrevYear default True;
    property NextMonth: Boolean read FNextMonth write SetNextMonth default True;
    property NextYear: Boolean read FNextYear write SetNextYear default True;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  TPlannerCalendarLook = (lookFlat, look3D);

  TXCalCustomCalendarPanel = class(TCustomPanel)
  private
    FEventMarkerColor: TColor;
    FEventMarkerShape: TEventShape;
    FEventDayColor: TColor;
    procedure SetEventMarkerColor(const Value: TColor);
    procedure SetEventMarkerShape(const Value: TEventShape);
    procedure SetEventDayColor(const Value: TColor);
  protected
    procedure UpdateYearStart; virtual;
    procedure DoPaint; virtual;
    procedure RepaintDate(dt: TDateTime); virtual;
  public
    property BorderWidth;
    property BevelWidth;
  published
    property EventDayColor: TColor read FEventDayColor write SetEventDayColor;
    property EventMarkerColor: TColor read FEventMarkerColor write SetEventMarkerColor;
    property EventMarkerShape: TEventShape read FEventMarkerShape write SetEventMarkerShape;
  end;

  TXCalPlannerCalendar = class(TXCalCustomCalendarPanel, ITMSStyle)
  private
    DateCol: TSelDateItems;
    EventCol: TSelDateItems;
//    xoffset, yoffset: integer;
    seldate: TDatetime;
    thedate: TDatetime;
    clkdate: TDatetime;
    movdate: TDatetime;
    initdate: TDatetime;
    mousesel: Boolean;
    showhintbusy: Boolean;
    FLastHintPos: TPoint;
    Fdx, Fdy: word;
//    lblx1, lblx2, lblx3: word;
    FFont: TFont;
    xposin, yposin: integer;
    flgl, flgr, flglma, flglya, dflgl, dflgr, flgt: Boolean;
//    labels: string[20];
    lblMonth, lblYear: string;
    EventHint: string;
    BrowserHint: string;
    FShowToday: Boolean;
    FLook: TPlannerCalendarLook;
    FBrowsers: TCalendarBrowsers;
    FMonthSelect: Boolean;
    FMultiSelect: Boolean;
    FEventHints: Boolean;
    FMaxDate: TMinMaxDate;
    FMinDate: TMinMaxDate;
    FTextcolor: TColor;
    FSelectColor: TColor;
    FSelectFontColor: TColor;
    FInactiveColor: TColor;
    FFocusColor: TColor;
    FInverscolor: TColor;
    FWeekendColor: TColor;
    FHeaderColor: TColor;
    FShowWeeks: Boolean;
    FStartDay: Integer;
    FDay, FMonth, FYear: word;
    FDayFont: TFont;
    FWeekFont: TFont;
    FWeekName: string;
    FOnCellDraw: TCellDrawEvent;
    FOnDaySelect: TDaySelectEvent;
    FOnMonthSelect: TNotifyEvent;
    FOnGetDateEvent: TGetDateEvent;
    FOnGetDateEventHint: TGetDateEventHint;
    FOnDateChange: TDateChangeEvent;
    FOnMonthChange: TDateChangeEvent;
    FOnYearChange: TDateChangeEvent;
    FOnDayChange: TDateChangeEvent;
    {$IFDEF USEIMAGE}
    FImage: TAdvImage;
    FBackgroundPosition: TBackgroundPosition;
    {$ENDIF}
    FShowDaysAfter: Boolean;
    FShowDaysBefore: Boolean;
    FShowSelection: Boolean;
    FWeekSelect: Boolean;
    FAllDaySelect: Boolean;
    FOnCancelledChange: TCancelledChangeEvent;
    FOnCancelledKey: TCancelledKeyEvent;
    FOnWeekSelect: TNotifyEvent;
    FOnAllDaySelect: TNotifyEvent;
    FUpdateCount: Integer;
    FCaptionColor: TColor;
    FReturnIsSelect: Boolean;
    FLineColor: TColor;
    FLine3D: Boolean;
    FGradientStartColor: TColor;
    FGradientEndColor: TColor;
    FGradientDirection: TGradientDirection;
    FMonthGradientStartColor: TColor;
    FMonthGradientEndColor: TColor;
    FMonthGradientDirection: TGradientDirection;
    FGlyphs: TCalGlyphs;
    FOldCursor: TCursor;
    FHintPrevYear: String;
    FHintPrevMonth: String;
    FHintNextMonth: String;
    FHintNextYear: String;
    FUseTheme: Boolean;
    FTodayStyle: TTodayStyle;
    FOnGetEventProp: TEventPropEvent;
    FShowGotoToday: Boolean;
    FTodayFormat: string;
    FCanvas: TCanvas;
    FBorderXP: Boolean;
    FCaptionTextColor: TColor;
    FCaption3D: boolean;
    FInActiveDays: TWeekDays;
    FAutoThemeAdapt: Boolean;
    FHoverDate: TDateTime;
    FStyle: TPlannerCalendarStyle;
    FDateSelectColor: TColor;
    FDateHoverColor: TColor;
    FDateDownColor: TColor;
    FBorderColor: TColor;
    FCustomDraw: boolean;
    FShowMonthSelector: Boolean;
    FShowYearSelector: Boolean;
    FEnable: Boolean;
    FMultiSelectCtrlKey: Boolean;
    FBorderFix: boolean;
    {mmm}
    FBrowserHoverColor: TColor;

    //xxx
    FXCalendar: TXCalendar;
    FXCalEvents: TCustomXCalendarEvents;
    FEOL: TXCalEventOccurenceList;

    {$IFDEF DELPHI4_LVL}
    FRTLOrientation: Boolean;
    {$ENDIF}
    FSideMargins: Integer;
    FTopHeight, FCaptionHeight, FWeekColWidth, FBtnsRowHeight: Integer;
    mmb, mmtb, mmcb, mmwb, mmbb, mmdb,
    mmpyb, mmnyb, mmpmb, mmnmb, mmgtb, mmlmb, mmlyb: TRect;
    procedure CalcBounds;

    function IsFontStored: Boolean;
    procedure CMParentFontChanged(var Message: TMessage); message CM_PARENTFONTCHANGED;

    procedure SetXCalendar(AValue: TXCalendar);
    procedure SetXCalEvents(AValue: TCustomXCalendarEvents);
    procedure GetXCalEvents;

    //xxx
    function StartOfTheWeek(const AValue: TDateTime): TDateTime;
    {/mmm}
    procedure WMCommand(var Message: TWMCommand); message WM_COMMAND;
    procedure WMKeyDown(var Msg: TWMKeydown); message WM_KEYDOWN;
    procedure WMEraseBkGnd(var Message: TWMEraseBkGnd); message WM_ERASEBKGND;
    procedure CMWantSpecialKey(var Msg: TCMWantSpecialKey); message CM_WANTSPECIALKEY;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message WM_LBUTTONDBLCLK;
    {$IFNDEF TMSDOTNET}
    procedure CMHintShow(var Msg: TMessage); message CM_HINTSHOW;
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    procedure CMHintShow(var Message: TCMHintShow); message CM_HINTSHOW;
    {$ENDIF}
    procedure SetLabel(mo, ye: word);
    procedure DiffCheck(dt1, dt2: tdatetime);
    function DiffMonth(dx: integer): TDateTime;
    function DiffYear(dx: integer): tdatetime;
    function CheckDateRange(dt: TDateTime): Boolean;
    function CheckMonth(dt: TDateTime): Boolean;
    function DaysInMonth(mo, ye: word): word;
    procedure PaintArrowLeft;
    procedure PaintArrowRight;
    procedure PaintDblArrowLeft;
    procedure PaintDblArrowRight;
    procedure PaintMonthLabel;
    procedure PaintYearLabel;
    procedure PaintProc;
    procedure PaintToday;
    procedure PaintEventMarker(R: TRect; AColor: TColor; AShape: TEventShape);
    procedure SetLook(AValue: TPlannerCalendarLook);
    procedure SetShowToday(AValue: Boolean);
    procedure SetMultiSelect(AValue: Boolean);
    procedure SetDayFont(AValue: TFont);
    procedure SetWeekFont(AValue: TFont);
    procedure SetTextColor(AColor: TColor);
    procedure SetFocusColor(AColor: TColor);
    procedure SetInversColor(AColor: TColor);
    procedure SetWeekendColor(AColor: TColor);
    procedure SetSelectColor(AColor: TColor);
    procedure SetSelectFontColor(AColor: TColor);
    procedure SetInactiveColor(AColor: TColor);
    procedure SetHeaderColor(AColor: TColor);
    procedure SetWeekName(const Value: string);
    procedure FontChanged(Sender: TObject);
    procedure SetFont(Value: TFont);
    procedure SetShowWeeks(AValue: Boolean);
    procedure SetStartDay(AValue: integer);
    procedure SetCalDay(AValue: word);
    procedure SetCalMonth(AValue: word);
    procedure SetCalYear(AValue: word);
    function GetCalDay: word;
    function GetCalMonth: word;
    function GetMonth(var dt: TDateTime): word;
    function GetCalYear: word;
    function XYToRect(const X, Y: Integer): TRect;
    function DateToRect(dt: TDateTime): TRect;
    function XYToDate(X, Y: integer; Change: Boolean): TDateTime;
    function GetDateProc: TDateTime;
    procedure SetDateProc(const Value: TDatetime);
    procedure SetDateCol(const Value: TSelDateItems);
    function GetDateCol: TSelDateItems;
    procedure DoMonthPopup;
    procedure DoYearPopup;
    procedure PropsChanged(Sender: TObject);
    procedure SetLineColor(AValue: TColor);
    procedure SetDateSelectColor(AColor: TColor);
    procedure SetLine3D(AValue: Boolean);
    procedure DrawGradient(Canvas: TCanvas; FromColor, ToColor: TColor; Steps: Integer; r:TRect; Direction: Boolean);
    {$IFDEF USEIMAGE}
    procedure SetImage(const Value: TAdvImage);
    procedure SetBackgroundPosition(const Value: TBackgroundPosition);
    {$ENDIF}
    procedure SetAutoThemeAdapt(const Value: Boolean);
    procedure SetStyle(const Value: TPlannerCalendarStyle);
    procedure SetComponentStyle(AStyle: TTMSStyle);
    procedure BackgroundChanged(Sender: TObject);
    function GetEvents: TSelDateItems;
    function GetDatesAsText: string;
    procedure SetEvents(const Value: TSelDateItems);
    procedure SetShowDaysAfter(const Value: Boolean);
    procedure SetShowDaysBefore(const Value: Boolean);
    procedure SetShowSelection(const Value: Boolean);
    procedure SetCaptionColor(const Value: TColor);
    procedure SetGradientStartColor(AValue: TColor);
    procedure SetGradientEndColor(AValue: TColor);
    procedure SetGradientDirection(AValue: TGradientDirection);
    procedure SetMonthGradientStartColor(AValue: TColor);
    procedure SetMonthGradientEndColor(AValue: TColor);
    procedure SetMonthGradientDirection(AValue: TGradientDirection);
    procedure SetGlyphs(const Value: TCalGlyphs);
    procedure SetHintPrevYear(AValue: String);
    procedure SetHintPrevMonth(AValue: String);
    procedure SetHintNextMonth(AValue: String);
    procedure SetHintNextYear(AValue: String);
    procedure SetTodayStyle(const Value: TTodayStyle);
    procedure SetShowGotoToday(const Value: Boolean);
    procedure SetTodayFormat(const Value: string);
    procedure SetBorderXP(const Value: Boolean);
    procedure SetCaptionTextColor(const Value: TColor);
    procedure SetCaption3D(Value: boolean);
    function IsVisibleDay(dt:TDateTime): Boolean;
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function GetVersionNr: Integer;
  protected
    {mmm}
    procedure ChangeOrientation(RTL: Boolean);

    { The invalidating rectangles should be mirrored for right-to-left alignment. so I kinda "hook" the InvalidateRect function }
    {$IFNDEF TMSDOTNET}
    function M_InvalidateRect(hWnd: HWND; lpRect: PRect; bErase: BOOL): BOOL;
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    function M_InvalidateRect(hWnd: HWND; R: TRect; bErase: BOOL): BOOL;
    {$ENDIF}

    procedure Resize; override;
    {/mmm}
    procedure DoPaint; override;
    procedure RepaintDate(dt: TDateTime); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Paint; override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyPress(var Key: char); override;
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure Loaded; override;
    function HasEvent(dt: TDateTime; var EventItem: TSelDateItem): Boolean; virtual;
    procedure DoChangeMonth(dt1, dt2: TDateTime); virtual;
    procedure DoChangeYear(dt1, dt2: TDateTime); virtual;
    property UseTheme: Boolean read FUseTheme;
    procedure YearStartChanged(Sender: TObject);
    function IsInActiveDay(dt: TDateTime): boolean; virtual;
    procedure ThemeAdapt;
    procedure WndProc(var Msg: TMessage); override;
    property BorderFix: boolean read FBorderFix write FBorderFix default false;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ChangeMonth(dx: integer);
    procedure ChangeYear(dx: integer);
    procedure SetDate(da, mo, ye: word);
    procedure GetDate(var da, mo, ye: word);
    procedure BeginUpdate;
    procedure EndUpdate;
    procedure ResetUpdate;
    function DateAtXY(x,y: Integer; var ADate: TDateTime): Boolean;
    function DateToXY(dt: TDateTime): TPoint;
    property Date: TDatetime read GetDateProc write SetDateProc;
    property Dates: TSelDateItems read GetDateCol write SetDateCol;
    property DatesAsText: string read GetDatesAsText;
    property Events: TSelDateItems read GetEvents write SetEvents;
    property Style: TPlannerCalendarStyle read FStyle write SetStyle;
    property CustomDraw: Boolean read FCustomDraw write FCustomDraw;
    function FirstDate: TDateTime;
    function LastDate: TDateTime;
    property OnCancelledKey: TCancelledKeyEvent read FOnCancelledKey write FOnCancelledKey;
  published
    property Align;
    property AllDaySelect: Boolean read FAllDaySelect write FAllDaySelect default False;
    property AutoThemeAdapt: Boolean read FAutoThemeAdapt write SetAutoThemeAdapt default False;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property Constraints;
    {$ENDIF}
    {$IFDEF USEIMAGE}
    property Background: TAdvImage read FImage write SetImage;
    property BackgroundPosition: TBackgroundPosition
      read FBackgroundPosition write SetBackgroundPosition;
    {$ENDIF}
    property BevelInner;
    property BevelOuter;
    property BevelWidth;
    property BorderWidth;
    property BorderXP: Boolean read FBorderXP write SetBorderXP default true;
    property BorderStyle;
    property Browsers: TCalendarBrowsers read FBrowsers write FBrowsers;
    property Caption3D: boolean read FCaption3D write SetCaption3D default false;
    property Color;
    property Cursor;
    property DragMode;
    property Enable: Boolean read FEnable write FEnable default True;
    property InActiveDays: TWeekDays read FInActiveDays write FInactiveDays;
    property Look: TPlannerCalendarLook read fLook write SetLook;
    property DateDownColor: TColor read FDateDownColor write FDateDownColor;
    property DateHoverColor: TColor read FDateHoverColor write FDateHoverColor;
    property DateSelectColor: TColor read FDateSelectColor write SetDateSelectColor;
    property MultiSelect: Boolean read FMultiSelect write SetMultiSelect default False;
    property MultiSelectCtrlKey: Boolean read FMultiSelectCtrlKey write FMultiSelectCtrlKey default False;
    property DayFont: TFont read FDayFont write SetDayFont{mmm} stored IsFontStored{/mmm};
    property WeekFont: TFont read FWeekFont write SetWeekFont{mmm} stored IsFontStored{/mmm};
    property WeekName: string read FWeekName write SetWeekName stored True;
    property TextColor: TColor read FTextColor write SetTextColor;
    property SelectColor: TColor read FSelectColor write SetSelectColor;
    property SelectFontColor: TColor read FSelectFontColor write SetSelectFontColor;
    property InActiveColor: TColor read FInactiveColor write SetInactiveColor;
    property HeaderColor: TColor read FHeaderColor write SetHeaderColor;
    property FocusColor: TColor read FFocusColor write SetFocusColor;
    property InversColor: TColor read FInversColor write SetInversColor;
    property WeekendColor: TColor read FWeekendColor write SetWeekendColor;
    property MaxDate: TMinMaxDate read FMaxDate write FMaxDate;
    property MinDate: TMinMaxDate read FMinDate write FMinDate;
    property PopupMenu;
    property ReturnIsSelect: Boolean read FReturnIsSelect write FReturnIsSelect default False;
    property ShowDaysBefore: Boolean read FShowDaysBefore write SetShowDaysBefore default True;
    property ShowDaysAfter: Boolean read FShowDaysAfter write SetShowDaysAfter default True;
    property ShowGotoToday: Boolean read FShowGotoToday write SetShowGotoToday default False;
    property ShowSelection: Boolean read FShowSelection write SetShowSelection default True;
    property ShowToday: Boolean read FShowToday write SetShowToday default false;
    property ShowWeeks: Boolean read FShowWeeks write SetShowWeeks default false;
    property ShowMonthSelector: Boolean read FShowMonthSelector write FShowMonthSelector default True;
    property ShowYearSelector: Boolean read FShowYearSelector write FShowYearSelector default True;
    property StartDay: integer read FStartDay write SetStartDay;
    property TodayFormat: string read FTodayFormat write SetTodayFormat;
    property TodayStyle: TTodayStyle read FTodayStyle write SetTodayStyle default tsSunken;

    property Day: word read GetCalDay write SetCalDay;
    property Month: word read GetCalMonth write SetCalMonth;
    property Year: word read GetCalYear write SetCalYear;
    property ShowHint;
    property ParentShowHint;
    property TabStop;
    property TabOrder;
    property WeekSelect: Boolean read FWeekSelect write FWeekSelect default False;
    property Font: TFont read FFont write SetFont{mmm} stored IsFontStored{/mmm};
    property EventHints: Boolean read FEventHints write FEventHints default False;
    property CaptionColor: TColor read FCaptionColor write SetCaptionColor;
    property CaptionTextColor: TColor read FCaptionTextColor write SetCaptionTextColor;
    property OnCellDraw : TCellDrawEvent read FOnCellDraw write FOnCellDraw;
    property OnDaySelect: TDaySelectEvent read FOnDaySelect write FOnDaySelect;
    property OnMonthSelect: TNotifyEvent read FOnMonthSelect write FOnMonthSelect;
    property OnGetDateHint: TGetDateEvent read FOnGetDateEvent write FOnGetDateEvent;
    property OnGetDateHintString: TGetDateEventHint read FOnGetDateEventHint
      write FOnGetDateEventHint;
    property OnGetEventProp: TEventPropEvent read FOnGetEventProp write FOnGetEventProp;
    property OnMonthChange: TDateChangeEvent read FOnMonthChange write FOnMonthChange;
    property OnYearChange: TDateChangeEvent read FOnYearChange write FOnYearChange;
    property OnDayChange: TDateChangeEvent read FOnDayChange write FOnDayChange;
    property OnDateChange: TDateChangeEvent read FOnDateChange write FOnDateChange;
    property OnCancelledChange: TCancelledChangeEvent read FOnCancelledChange write FOnCancelledChange;
    property OnWeekSelect: TNotifyEvent read FOnWeekSelect write FOnWeekSelect;
    property OnAllDaySelect: TNotifyEvent read FOnAllDaySelect write FOnAllDaySelect;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseMove;
    property OnMouseDown;
    property OnMouseUp;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnStartDrag;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnResize;
    property LineColor: TColor read FLineColor write SetLineColor;
    property Line3D: Boolean read FLine3D write SetLine3D;
    property GradientStartColor: TColor read FGradientStartColor write SetGradientStartColor;
    property GradientEndColor: TColor read FGradientEndColor write SetGradientEndColor;
    property GradientDirection: TGradientDirection read FGradientDirection write SetGradientDirection;
    property MonthGradientStartColor: TColor read FMonthGradientStartColor write SetMonthGradientStartColor;
    property MonthGradientEndColor: TColor read FMonthGradientEndColor write SetMonthGradientEndColor;
    property MonthGradientDirection: TGradientDirection read FMonthGradientDirection write SetMonthGradientDirection;
    property Glyphs: TCalGlyphs read FGlyphs write SetGlyphs;
    property HintPrevYear: String read FHintPrevYear write SetHintPrevYear;
    property HintPrevMonth: String read FHintPrevMonth write SetHintPrevMonth;
    property HintNextMonth: String read FHintNextMonth write SetHintNextMonth;
    property HintNextYear: String read FHintNextYear write SetHintNextYear;
    property Version: string read GetVersion write SetVersion;
    {mmm}
    property BiDiMode;
    property ParentBiDiMode;
    property ParentFont;

    property BrowserHoverColor: TColor read FBrowserHoverColor write FBrowserHoverColor default clNone;

    //xxx
    property XCalendar: TXCalendar read FXCalendar write SetXCalendar;
    property XCalendarEvents: TCustomXCalendarEvents read FXCalEvents write SetXCalEvents;
    {/mmm}
  end;

implementation

uses
  ComObj
{$IFDEF TMSDOTNET}
  , Types
{$ENDIF}
  ;

const
  WM_THEMECHANGED = $031A;

type
  HTHEME = THandle;
  XPColorScheme = (xpNone, xpBlue, xpGreen, xpGray, xpNoTheme);

var
  DLLLoaded: Boolean = False;
  DLLHandle: THandle;

  {$IFNDEF TMSDOTNET}

  OpenThemeData: function(hwnd: THandle; pszClassList: PWideChar): HTheme cdecl stdcall;


  CloseThemeData: function(hTheme: HTHEME): THandle cdecl stdcall;

  DrawThemeBackground: function(hTheme: HTHEME;
                                hdc: HDC;
                                iPartId: Integer;
                                iStateId: Integer;
                                const pRect: PRECT;
                                const pClipRect: PRECT): THandle cdecl stdcall;

  IsThemeActive: function: BOOL cdecl stdcall;

  GetCurrentThemeName: function(pszThemeFileName: PWideChar;
    cchMaxNameChars: Integer;
    pszColorBuff: PWideChar;
    cchMaxColorChars: Integer;
    pszSizeBuff: PWideChar;
    cchMaxSizeChars: Integer): THandle cdecl stdcall;

  {$ENDIF}

{mmm}
function IsInBounds(const x, y: Integer; const R: TRect): Boolean;
begin
  Result := (x >= R.Left) and (x < R.Right) and (y >= R.Top) and (y < R.Bottom);
end;

function Max(a, b: integer): integer;
begin
  if a > b then
    Result := a
  else
    Result := b;
end;
{/mmm}

{$IFNDEF DELPHI7_LVL}
{$IFNDEF TMSDOTNET}
function GetFileVersion(FileName:string): Integer;
var
  FileHandle:dword;
  l: Integer;
  pvs: PVSFixedFileInfo;
  lptr: uint;
  querybuf: array[0..255] of char;
  buf: PChar;
begin
  Result := -1;

  StrPCopy(querybuf,FileName);
  l := GetFileVersionInfoSize(querybuf,FileHandle);
  if (l>0) then
  begin
    GetMem(buf,l);
    GetFileVersionInfo(querybuf,FileHandle,l,buf);
    if VerQueryValue(buf,'\',Pointer(pvs),lptr) then
    begin
      if (pvs^.dwSignature=$FEEF04BD) then
      begin
        Result := pvs^.dwFileVersionMS;
      end;
    end;
    FreeMem(buf);
  end;
end;
{$ENDIF}
{$ENDIF}
  

function IsWinXP: Boolean;
var
  VerInfo: TOSVersioninfo;
begin
{$IFNDEF TMSDOTNET}
  VerInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
{$ENDIF}
{$IFDEF TMSDOTNET}
  VerInfo.dwOSVersionInfoSize := Marshal.SizeOf(TypeOf(OSVersionInfo));
{$ENDIF}
  GetVersionEx(verinfo);
  Result := (verinfo.dwMajorVersion > 5) OR
    ((verinfo.dwMajorVersion = 5) AND (verinfo.dwMinorVersion >= 1));
end;

{$IFDEF TMSDOTNET}
function CurrentXPTheme: XPColorScheme;

  function IsThemedApp: Boolean;
  var
    i: Integer;
  begin
    // app is linked with COMCTL32 v6 or higher -> xp themes enabled
    i := GetFileVersion('COMCTL32.DLL');
    i := (i shr 16) and $FF;
    Result := (i > 5);
  end;

var
  FileName, ColorScheme, SizeName: StringBuilder;
begin
  Result := xpNone;

  if IsWinXP then
  begin
    if IsThemeActive and IsThemedApp then
    begin
      FileName := StringBuilder.Create(255);
      SizeName := StringBuilder.Create(255);
      ColorScheme := StringBuilder.Create(255);
      GetCurrentThemeName(FileName, 255, ColorScheme, 255, SizeName, 255);
      if(ColorScheme.ToString = 'NormalColor') then
        Result := xpBlue
      else if (ColorScheme.ToString = 'HomeStead') then
        Result := xpGreen
      else if (ColorScheme.ToString = 'Metallic') then
        Result := xpGray
    end
    else
      Result := xpNoTheme;
  end;
end;
{$ENDIF}

{$IFNDEF TMSDOTNET}
function CurrentXPTheme: XPColorScheme;

  function IsThemedApp: Boolean;
  var
    i: Integer;
  begin
    // app is linked with COMCTL32 v6 or higher -> xp themes enabled
    i := GetFileVersion('COMCTL32.DLL');
    i := (i shr 16) and $FF;
    Result := (i > 5);
  end;

var
  FileName, ColorScheme, SizeName: WideString;
  hThemeLib: THandle;
begin
  hThemeLib := 0;
  Result := xpNone;

  if not IsWinXP then
    Exit;

  try
    hThemeLib := LoadLibrary('uxtheme.dll');

    if hThemeLib > 0 then
    begin

      if IsThemeActive and IsThemedApp then
      begin
        GetCurrentThemeName := GetProcAddress(hThemeLib,'GetCurrentThemeName');
        if Assigned(GetCurrentThemeName) then
        begin
          SetLength(FileName, 255);
          SetLength(ColorScheme, 255);
          SetLength(SizeName, 255);
          OleCheck(GetCurrentThemeName(PWideChar(FileName), 255,
            PWideChar(ColorScheme), 255, PWideChar(SizeName), 255));
          if (PWideChar(ColorScheme) = 'NormalColor') then
            Result := xpBlue
          else if (PWideChar(ColorScheme) = 'HomeStead') then
            Result := xpGreen
          else if (PWideChar(ColorScheme) = 'Metallic') then
            Result := xpGray
          else
            Result := xpNone;
        end
        else
          Result := xpNoTheme;
      end
      else
       Result := xpNoTheme;
    end;
  finally
    if hThemeLib <> 0 then
      FreeLibrary(hThemeLib);
  end;
end;
{$ENDIF}

constructor TXCalPlannerCalendar.Create(AOwner: TComponent);
var
  VerInfo: TOSVersioninfo;
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle - [csAcceptsControls];

  FDayFont := TFont.Create;
  FWeekFont := TFont.Create;
  FInActiveDays := TWeekDays.Create;
  FInActiveDays.OnChanged := BackgroundChanged;
  FFont := TFont.Create;
  FMinDate := TMinMaxDate.Create(self);
  FMaxDate := TMinMaxDate.Create(self);
  DateCol := TSelDateItems.Create(self);
  EventCol := TSelDateItems.Create(self);
  FBrowsers := TCalendarBrowsers.Create;
  FBrowsers.OnChange := PropsChanged;
  FGlyphs := TCalGlyphs.Create(Self);
  {$IFDEF USEIMAGE}
  FImage := TAdvImage.Create;
  FImage.OnChange := BackgroundChanged;
  FBackgroundPosition := bpTiled;
  {$ENDIF}
  FMonthSelect := True;
  if (csDesigning in ComponentState) then
    FWeekName := 'Wk';
//  xoffset := 0;
//  yoffset := 16;
  thedate := Now;
  seldate := thedate;
  FShowMonthSelector := true;
  FShowYearSelector := true;
  ChangeMonth(0);
  flgl := False;
  flgr := False;
  flglma := False;
  flglya := False;
  flgt := False;
  dflgl := False;
  dflgr := False;
  FUpdateCount := 0;
  Width := 180;
  Height := 180;
  FSelectColor := clTeal;
  FSelectFontColor := clWhite;
  FInactiveColor := clGray;
  FInversColor := clTeal;
  FFocusColor := clHighLight;
  FTextColor := clBlack;
  FWeekendColor := clRed;
  FHeaderColor := clNone;
  FEnable := true;
  FStartDay := 7;
  BorderWidth := 1;
  FBorderXP := True;
  FCustomDraw := True;
  BevelOuter := bvNone;

  //xxx
  if Assigned(FXCalendar) then
    FXCalendar.DecodeDate(theDate, FYear, FMonth, FDay)
  else
    DecodeDate(theDate, FYear, FMonth, FDay);
  
  Caption := '';
  Showhintbusy := False;
  FLastHintPos := Point(-1, - 1);
  FFont.OnChange := FontChanged;
  FDayFont.OnChange := FontChanged;
  FWeekFont.OnChange := FontChanged;
  FEventMarkerColor := clYellow;
  FEventMarkerShape := evsCircle;
  FShowDaysBefore := True;
  FShowDaysAfter := True;
  FShowSelection := True;
  FCaptionColor := clNone;
  FLineColor := clGray;
  FLine3D := true;
  FGradientStartColor := clWhite;
  FGradientEndColor := clBtnFace;
  FGradientDirection := gdVertical;
  FDateSelectColor := clTeal;
  FDateHoverColor := clNone;
  FDateDownColor := clNone;
  FMonthGradientStartColor := clNone;
  FMonthGradientEndColor := clNone;
  FMonthGradientDirection := gdHorizontal;
  FTodayFormat := '"Today:" dddd ddddd';

  {mmm}
  FSideMargins := 2;
  FCaptionHeight := 20;
  FTopHeight := 45;
  FWeekColWidth := 30;
  FBtnsRowHeight := 40;
  FBrowserHoverColor := clNone;

  FRTLOrientation := False;
  {/mmm}

  if (csDesigning in ComponentState) then
  begin
    FHintPrevYear := 'Previous Year';
    FHintPrevMonth := 'Previous Month';
    FHintNextMonth := 'Next Month';
    FHintNextYear := 'Next Year';
  end;

  FCaption3D:= false;

  {$IFDEF DELPHI4_LVL}
  {$IFNDEF DELPHI9_LVL} //mmm
  DoubleBuffered := True;
  {$ENDIF}
  {$ENDIF}

  VerInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  GetVersionEx(verinfo);

  FUseTheme := (verinfo.dwMajorVersion > 5) OR
    ((verinfo.dwMajorVersion = 5) AND (verinfo.dwMinorVersion >= 1));

  if FUseTheme then
    FUseTheme := FUseTheme and (IsThemeActive or (csDesigning in ComponentState));

end;

destructor TXCalPlannerCalendar.Destroy;
begin
  //xxx
//  if Assigned(FXCalendar) then
//    FXCalendar.RemoveNotify(PropsChanged);
  if Assigned(FEOL) then
    FEOL.Free;
    
  FFont.Free;
  FDayFont.Free;
  FWeekFont.Free;
  FInActiveDays.Free;
  FMinDate.Free;
  FMaxDate.Free;
  {$IFDEF USEIMAGE}
  FImage.Free;
  {$ENDIF}
  DateCol.Free;
  EventCol.Free;
  FBrowsers.Free;
  FGlyphs.Free;
  inherited Destroy;
end;

procedure TXCalPlannerCalendar.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
end;

procedure TXCalPlannerCalendar.SetFont(Value: tFont);
begin
  FFont.Assign(Value);
  Canvas.Font.Assign(FFont);
end;

procedure TXCalPlannerCalendar.FontChanged(Sender: TObject);
begin
  {mmm}
  ParentFont := False;
  DesktopFont := False;
  Perform(CM_FONTCHANGED, 0, 0);
  {/mmm}

  Canvas.Font.Assign(Font);
  DoPaint;
end;

procedure TXCalPlannerCalendar.DoEnter;
begin
  inherited DoEnter;
  DoPaint;
end;

procedure TXCalPlannerCalendar.DoExit;
begin
  inherited DoExit;
  DoPaint;
end;

procedure TXCalPlannerCalendar.SetLineColor(AValue: TColor);
begin
  FLineColor := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetLine3D(AValue: Boolean);
begin
  FLine3D := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.Loaded;

begin
  inherited Loaded;
  //xxx
  if Assigned(FXCalendar) then
    SelDate := FXCalendar.EncodeDate(FYear, FMonth, FDay)
  else
    SelDate := EncodeDate(FYear, FMonth, FDay);
  TheDate := SelDate;

  //mmm
  SetLabel(FMonth, FYear);

  FOldCursor := Cursor;
  
  if AutoThemeAdapt and not (csDesigning in ComponentState) then
    ThemeAdapt;
end;

procedure TXCalPlannerCalendar.SetLook(avalue: TPlannerCalendarLook);
begin
  FLook := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetShowToday(AValue: Boolean);
begin
  FShowToday := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetTodayStyle(const Value: TTodayStyle);
begin
  FTodayStyle := Value;
  Invalidate;
end;


procedure TXCalPlannerCalendar.SetMultiSelect(AValue: Boolean);
begin
  FMultiSelect := AValue;
  if not FMultiSelect then DateCol.Clear;
  DoPaint;
end;

procedure TXCalPlannerCalendar.SetDayFont(AValue: TFont);
begin
  if Assigned(AValue) then
    FDayFont.Assign(AValue);
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetGlyphs(const Value: TCalGlyphs);
begin
  FGlyphs.Assign(Value);
end;

procedure TXCalPlannerCalendar.SetWeekFont(AValue: TFont);
begin
  if Assigned(AValue) then
    FWeekFont.Assign(AValue);
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetWeekName(const Value: string);
begin
  FWeekName := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetTextColor(aColor: TColor);
begin
  FTextColor := AColor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetInversColor(AColor: TColor);
begin
  FInversColor := AColor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetFocusColor(AColor: TColor);
begin
  FFocusColor := AColor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetWeekendColor(AColor: TColor);
begin
  FWeekendColor := AColor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetDateSelectColor(AColor: TColor);
begin
  FDateSelectColor := AColor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetSelectColor(AColor: TColor);
begin
  FSelectColor := AColor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetSelectFontColor(AColor: TColor);
begin
  FSelectFontColor := AColor;
  Invalidate;
end;


procedure TXCalPlannerCalendar.SetInActiveColor(AColor: TColor);
begin
  FInactiveColor := AColor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetHeaderColor(AColor: TColor);
begin
  FHeaderColor := Acolor;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetLabel(mo, ye: word);
begin
  //xxx
  if Assigned(FXCalendar) then
    lblMonth := FXCalendar.FormatSettings.LongMonthNames[mo - 1]
  else
    lblMonth := LongMonthNames[mo - 1];
  lblYear :=  IntToStr(ye);
end;

function TXCalPlannerCalendar.DaysInMonth(mo, ye: word): word;
begin
  if mo <> 2 then
    DaysInMonth := ADaysinmonth[mo]
  else
  begin
    if (ye mod 4 = 0) then DaysInMonth := 29
    else
      DaysInMonth := 28;
    if (ye mod 100 = 0) then DaysInMonth := 28;
    if (ye mod 400 = 0) then DaysInmonth := 29;
  end;
end;

procedure TXCalPlannerCalendar.SetStartDay(AValue: integer);
begin
  if AValue < 1 then
    AValue := 1;
  if AValue > 7 then
    AValue := 7;
  FStartDay := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetShowWeeks(aValue: Boolean);
begin
//  if AValue then
//    XOffset := self.Width div 8
//  else if not (csLoading in ComponentState) then XOffset := 0;
  FShowWeeks := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetCalDay(AValue: word);
begin
  if not (csLoading in ComponentState) then
  begin
    SetDate(AValue, FMonth, FYear);
    FDay := AValue;
    Invalidate;
  end
  else
    FDay := AValue;
end;

procedure TXCalPlannerCalendar.SetCalMonth(AValue: word);
begin
  if not (csLoading in ComponentState) then
  begin
    SetDate(FDay, AValue, FYear);
    FMonth := AValue;
    Invalidate;
  end
  else
    FMonth := AValue;
end;

procedure TXCalPlannerCalendar.SetCalYear(AValue: word);
begin
  if not (csLoading in ComponentState) then
  begin
    SetDate(FDay, FMonth, AValue);
    FYear := AValue;
    Invalidate;
  end
  else
    FYear := AValue;
end;

function TXCalPlannerCalendar.GetCalDay: word;
var
  mo, ye: word;
begin
  GetDate(Result, mo, ye);
end;

function TXCalPlannerCalendar.GetCalMonth: word;
var
  da, ye: word;
begin
  GetDate(da, Result, ye);
end;

function TXCalPlannerCalendar.GetMonth(var dt: TDateTime): word;
var
  da, ye: word;
begin
  //xxx
  if Assigned(FXCalendar) then
    FXCalendar.DecodeDate(dt, ye, Result, da)
  else
    DecodeDate(dt, ye, Result, da);
end;


function TXCalPlannerCalendar.GetCalYear: word;
var
  da, mo: word;
begin
  GetDate(da, mo, Result);
end;

procedure TXCalPlannerCalendar.ChangeMonth(dx: integer);
var
  ye, mo, da: word;
  dt: TDateTime;
begin
  //xxx
  if Assigned(FXCalendar) then
  begin
    FXCalendar.DecodeDate(thedate, ye, mo, da);
    FXCalendar.IncAMonth(ye, mo, da, dx);
    dt := FXCalendar.EncodeDate(ye, mo, da);
  end
  else
  begin
//fixed Sep 04 2008  -  Thanks to Delphi_Tips for pointing out the problem
    DecodeDate(thedate, ye, mo, da);

    mo := mo + dx;

    while mo > 12 do
    begin
      Inc(ye);
      mo := mo - 12;
    end;

    if mo = 0 then
    begin
      Dec(ye);
      mo := 12;
    end;

    if da > DaysInMonth(mo, ye) then
      da := DaysInMonth(mo, ye);

    dt := EncodeDate(ye, mo, da);
  end;

  if CheckDateRange(dt) then
  begin
    thedate := dt;
    seldate := thedate;
    SetLabel(mo, ye);
    Invalidate;
  end
  else
  begin
    if MinDate.Use then
      if dt < MinDate.Date then
        dt := MinDate.Date;
    if MaxDate.Use then
      if dt > MaxDate.Date then
        dt := MaxDate.Date;
    thedate := dt;

    //xxx
    if Assigned(FXCalendar) then
      FXCalendar.DecodeDate(dt, ye, mo, da)
    else
      DecodeDate(dt, ye, mo, da);

    seldate := thedate;
    SetLabel(mo, ye);
    Invalidate;
  end;

  //xxx
  if Assigned(FXCalEvents) then
    GetXCalEvents;
end;

function TXCalPlannerCalendar.CheckDateRange(dt: TDatetime): Boolean;
begin
  //xxx
  Result :=
    (not FMinDate.Use or (FMinDate.Date <= dt))
    and
    (not FMaxDate.Use or (FMaxDate.Date >= dt));
end;

function TXCalPlannerCalendar.CheckMonth(dt: TDatetime): Boolean;
begin
  //xxx
  if Assigned(FXCalendar) then
    Result :=
      (not FMinDate.Use or (FXCalendar.StartOfAMonth(FMinDate.Year, FMinDate.Month) <= dt))
      and
      (not FMaxDate.Use or (FXCalendar.EndOfAMonth(FMaxDate.Year, FMaxDate.Month) >= dt))
  else
    Result :=
      (not FMinDate.Use or (EncodeDate(FMinDate.Year, FMinDate.Month, 1) <= dt))
      and
      (not FMaxDate.Use or (EncodeDate(FMaxDate.Year, FMaxDate.Month, DaysInMonth(FMaxDate.Month,FMaxDate.Year)) >= dt));
end;


procedure TXCalPlannerCalendar.DiffCheck(dt1, dt2: tdatetime);
var
  da1, da2, mo1, mo2, ye1, ye2: word;
begin
  //xxx
  if Assigned(FXCalendar) then
  begin
    FXCalendar.DecodeDate(dt1, ye1, mo1, da1);
    FXCalendar.DecodeDate(dt2, ye2, mo2, da2);
  end
  else
  begin
    DecodeDate(dt1, ye1, mo1, da1);
    DecodeDate(dt2, ye2, mo2, da2);
  end;

  if (da1 <> da2) then
  begin
    if Assigned(FOnDayChange) then
      FOnDayChange(self, dt1, dt2);
  end;

  if (mo1 <> mo2) then
  begin
    DoChangeMonth(dt1, dt2);
  end;

  if ye1 <> ye2 then
  begin
    DoChangeYear(dt1, dt2);
  end;
end;

function TXCalPlannerCalendar.DiffMonth(dx: integer): tdatetime;
begin
  //xxx
  if Assigned(FXCalendar) then
    Result := FXCalendar.IncMonth(thedate, dx)
  else
    Result := IncMonth(thedate, dx);
end;

function TXCalPlannerCalendar.DiffYear(dx: integer): tdatetime;
var
  ye, mo, da: word;
begin
  //xxx
  if Assigned(FXCalendar) then
    Result := FXCalendar.IncYear(thedate, dx)
  else
  begin
    DecodeDate(thedate, ye, mo, da);
    ye := ye + dx;
    if da > DaysInMonth(mo, ye) then
      da := DaysInMonth(mo, ye);
    Result := EncodeDate(ye, mo, da);
  end;
end;

procedure TXCalPlannerCalendar.ChangeYear(dx: integer);
var
  ye, mo, da: word;
  dt: TDatetime;
begin
  //xxx
  if Assigned(FXCalendar) then
  begin
    FXCalendar.DecodeDate(thedate, ye, mo, da);
    FXCalendar.IncAYear(ye, mo, da, dx);
    dt := FXCalendar.EncodeDate(ye, mo, da);
  end
  else
  begin
    DecodeDate(thedate, ye, mo, da);
    ye := ye + dx;
    dt := EncodeDate(ye, mo, da);
  end;
  if CheckDateRange(dt) then
  begin
    thedate := dt;
    seldate := thedate;
    SetLabel(mo, ye);
    DoPaint;
  end;

  //xxx
  if Assigned(FXCalEvents) then
    GetXCalEvents;
end;

procedure TXCalPlannerCalendar.PaintArrowLeft;
const
  gw = 6;
  gh = 11;
var
  x, y: Integer;
  SaveRTLO: Boolean;
begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  with FCanvas do
  begin
    if not FGlyphs.FPrevMonth.Empty then
    begin
      FGlyphs.PrevMonth.TransparentMode := tmAuto;
      FGlyphs.PrevMonth.Transparent := true;
      FCanvas.Draw(mmpmb.Left, mmpmb.Top, FGlyphs.FPrevMonth);
    end
    else
    begin
      if flgl and (FBrowserHoverColor <> clNone) then
      begin
        Brush.Color := FBrowserHoverColor;
        Pen.Color := FBorderColor;
        Rectangle(mmpmb);

        Brush.Color := FSelectColor;
        Pen.Color := FSelectColor;
      end
      else
      begin
        Brush.Color := FCaptionTextColor;
        Pen.Color := FCaptionTextColor;
      end;

      if not CheckDateRange(Diffmonth(-1)) then
      begin
        Brush.Color := FInactiveColor;
        Pen.Color := FInactiveColor;
      end;

      x := mmpmb.Left + (mmpmb.Right - mmpmb.Left - gw) div 2;
      y := mmpmb.Top + (mmpmb.Bottom - mmpmb.Top - gh) div 2;

      Polygon([Point(x + gw - 1, y           ),
               Point(x         , y + gh div 2),
               Point(x + gw - 1, y + gh - 1  )]);

      Brush.Color := Color;
    end;
  end;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.PaintArrowRight;
const
  gw = 6;
  gh = 11;
var
  x, y: Integer;
  SaveRTLO: Boolean;
begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  with FCanvas do
  begin
    if not FGlyphs.FNextMonth.Empty then
    begin
      FGlyphs.NextMonth.TransparentMode := tmAuto;
      FGlyphs.NextMonth.Transparent := true;
      FCanvas.Draw(mmnmb.Left, mmnmb.Top, FGlyphs.NextMonth);
    end
    else
    begin
      if flgr and (FBrowserHoverColor <> clNone) then
      begin
        Brush.Color := FBrowserHoverColor;
        Pen.Color := FBorderColor;
        Rectangle(mmnmb);

        Brush.Color := FSelectcolor;
        Pen.Color := FSelectcolor;
      end
      else
      begin
        Brush.Color := FCaptionTextColor;
        Pen.Color := FCaptionTextColor;
      end;

      if not CheckDateRange(diffmonth(+1)) then
      begin
        Brush.Color := FInactiveColor;
        Pen.Color := FInactiveColor;
      end;

      x := mmnmb.Left + (mmnmb.Right - mmnmb.Left - gw) div 2;
      y := mmnmb.Top + (mmnmb.Bottom - mmnmb.Top - gh) div 2;

      Polygon([Point(x         , y           ),
               Point(x         , y + gh - 1  ),
               Point(x + gw - 1, y + gh div 2)]);

      Brush.Color := Color;
    end;
  end;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.PaintDblArrowLeft;
const
  gw = 11;
  gh = 11;
var
  x, y: Integer;
  SaveRTLO: Boolean;
begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  with FCanvas do
  begin
    if not FGlyphs.FPrevYear.Empty then
    begin
      FGlyphs.PrevYear.TransparentMode := tmAuto;
      FGlyphs.PrevYear.Transparent := true;
      FCanvas.Draw(mmpyb.Left, mmpyb.Top, FGlyphs.FPrevYear);
    end
    else
    begin
      if dflgl and (FBrowserHoverColor <> clNone) then
      begin
        Brush.Color := FBrowserHoverColor;
        Pen.Color := FBorderColor;
        Rectangle(mmpyb);

        Brush.Color := FSelectColor;
        Pen.Color := FSelectColor;
      end
      else
      begin
        Brush.Color := FCaptionTextColor;
        Pen.Color := FCaptionTextColor;
      end;

      if not checkdaterange(diffyear(-1)) then
      begin
        Brush.Color := FInactiveColor;
        Pen.Color := FInactiveColor;
      end;

      x := mmpyb.Left + (mmpyb.Right - mmpyb.Left - gw) div 2;
      y := mmpyb.Top + (mmpyb.Bottom - mmpyb.Top - gh) div 2;

      Polygon([Point(x + gw div 2, y), Point(x, y + gh div 2), Point(x + gw div 2, y + gh - 1)]);
      Polygon([Point(x + gw - 1, y), Point(x + gw div 2, y + gh div 2), Point(x + gw - 1, y + gh - 1)]);

      Brush.Color := Color;
    end;
  end;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.PaintDblArrowRight;
const
  gw = 11;
  gh = 11;
var
  x, y: Integer;
  SaveRTLO: Boolean;
begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  with FCanvas do
  begin
    if not FGlyphs.FNextYear.Empty then
    begin
      FGlyphs.NextYear.TransparentMode := tmAuto;
      FGlyphs.NextYear.Transparent := true;
      FCanvas.Draw(mmnyb.Left, mmnyb.Top, FGlyphs.FNextYear);
    end
    else
    begin
      if dflgr and (FBrowserHoverColor <> clNone) then
      begin
        Brush.Color := FBrowserHoverColor;
        Pen.Color := FBorderColor;
        Rectangle(mmnyb);

        Brush.Color := FSelectColor;
        Pen.Color := FSelectColor;
      end
      else
      begin
        Brush.Color := FCaptionTextColor;
        Pen.Color := FCaptionTextColor;
      end;

      if not Checkdaterange(diffyear(+1)) then
      begin
        Brush.Color := FInactiveColor;
        Pen.Color := FInactiveColor;
      end;

      x := mmnyb.Left + (mmnyb.Right - mmnyb.Left - gw) div 2;
      y := mmnyb.Top + (mmnyb.Bottom - mmnyb.Top - gh) div 2;

      Polygon([Point(x, y), Point(x + gw div 2, y + gh div 2), Point(x, y + gh - 1)]);
      Polygon([Point(x + gw div 2, y), Point(x + gw - 1, y + gh div 2), Point(x + gw div 2, y + gh - 1)]);

      Brush.Color := Color;
    end;
  end;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.PaintMonthLabel;
var
  SaveRTLO: Boolean;
begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  with FCanvas do
  begin
    Font.Assign(FFont);

    if flglma then
      Font.Color := FSelectColor
    else
      Font.Color := FCaptionTextColor;

    SetBKMode(FCanvas.Handle, TRANSPARENT);

//    TextOut(mmlmb.Left, mmlmb.Top, lblMonth);
    {$IFNDEF TMSDOTNET}
    DrawText(Handle, PChar(lblMonth), length(lblMonth), mmlmb,
      DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    DrawText(Handle, lblMonth, length(lblMonth), mmlmb,
      DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    {$ENDIF}

    Font.Color := FTextColor;
  end;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.PaintYearLabel;
var
  SaveRTLO: Boolean;
begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  with FCanvas do
  begin
    Font.Assign(FFont);

    if flglya then
      Font.Color := FSelectColor
    else
      Font.Color := FCaptionTextColor;

    SetBKMode(FCanvas.Handle, TRANSPARENT);

//    TextOut(mmlyb.Left, mmlyb.Top, lblYear);
    {$IFNDEF TMSDOTNET}
    DrawText(Handle, PChar(lblYear), length(lblYear), mmlyb,
      DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    DrawText(Handle, lblYear, length(lblYear), mmlyb,
      DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    {$ENDIF}

    Font.Color := FTextColor;
  end;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.PaintEventMarker(R: TRect; AColor: TColor;
  AShape: TEventShape);
var
  wi, he: integer;
  SaveRTLO: Boolean;

begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  InflateRect(R, - 1, - 1);
  FCanvas.Brush.Color := AColor;
  FCanvas.Pen.Color := AColor;
  case AShape of
    evsCircle: FCanvas.Ellipse(r.Left, r.Top, r.Right, r.Bottom);
    evsRectangle: FCanvas.Rectangle(r.Left, r.Top, r.Right, r.Bottom);
    evsSquare:
    begin
      wi := (r.Right - r.Left) shr 1;
      he := (r.Bottom - r.Top) shr 1;
      FCanvas.Polygon([Point(r.Left + wi, r.Top), Point(r.Right, r.Top + he),
        Point(r.Left + wi, r.Bottom), Point(r.Left, r.Top + he)]);
    end;
    evsTriangle:
    begin
      wi := (r.Right - r.Left) shr 1;
      FCanvas.Polygon([Point(r.Left + wi, r.Top), Point(r.Right, r.Bottom),
        Point(r.Left, r.Bottom)]);
    end;
  end;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

//xxx
const
  CDayMap: array [1..7] of Word = (7, 1, 2, 3, 4, 5, 6);
  CDayMap2: array [1..7] of Word = (2, 3, 4, 5, 6, 7, 1);

procedure DecodeDateWeek(const AValue: TDateTime; out AYear, AWeekOfYear,
  ADayOfWeek: Word);
var
  LDayOfYear: Integer;
  LMonth, LDay: Word;
  LStart: TDateTime;
  LStartDayOfWeek, LEndDayOfWeek: Word;
  LLeap: Boolean;
begin
  DecodeDate(AValue, AYear, LMonth, LDay);
  ADayOfWeek := DayOfWeek(AValue);
  LLeap := IsLeapYear(AYear);
  ADayOfWeek := CDayMap[ADayOfWeek];
  LStart := EncodeDate(AYear, 1, 1);
  LDayOfYear := Trunc(AValue - LStart + 1);
  LStartDayOfWeek := CDayMap2[DayOfWeek(LStart)];
  if LStartDayOfWeek in [5, 6, 7] then
    Dec(LDayOfYear, 8 - LStartDayOfWeek)
  else
    Inc(LDayOfYear, LStartDayOfWeek - 1);
  if LDayOfYear <= 0 then
    DecodeDateWeek(LStart - 1, AYear, AWeekOfYear, LDay)
  else
  begin
    AWeekOfYear := LDayOfYear div 7;
    if LDayOfYear mod 7 <> 0 then
      Inc(AWeekOfYear);
    if AWeekOfYear > 52 then
    begin
      LEndDayOfWeek := LStartDayOfWeek;
      if LLeap then
      begin
        if LEndDayOfWeek = 7 then
          LEndDayOfWeek := 1
        else
          Inc(LEndDayOfWeek);
      end;
      if LEndDayOfWeek in [1, 2, 3] then
      begin
        Inc(AYear);
        AWeekOfYear := 1;
      end;
    end;
  end;
end;

//xxx
function WeekOfTheYear(const AValue: TDateTime): Word;
var
  LYear, LDOW: Word;
begin
  DecodeDateWeek(AValue, LYear, Result, LDOW);
end;

//xxx
function TXCalPlannerCalendar.StartOfTheWeek(const AValue: TDateTime): TDateTime;
var
  dddd: Integer;
begin
  dddd := DayOfWeek(AValue) - 1 - StartDay;
  if dddd < 0 then
    dddd := dddd + 7;
  Result := Trunc(AValue) - dddd;
end;


procedure TXCalPlannerCalendar.PaintProc;
var
  i, j: word;
  da, mo, ye, pmo, pye, nmo, nye, sda, cda, cmo, cye, dye, sye, snye, spye, wfh{xxx}, DummyDay: word;
  fd, fmd: integer;
  d, pyd, pnd, pcd{xxx}, dt: TDateTime;
  dstr: string;
  IsEvent: Boolean;
  r,dr: TRect;
  oldStyle: TFontStyles;
  inlist: Boolean;
  EventDate: TSelDateItem;
  k : integer;
  dddd: Integer;

  //xxx
  procedure CheckXCalEvent(const ADate: TDateTime; HighlightVacations: Boolean);
  var
    n: Integer;
  begin
    if Assigned(FXCalEvents) then
    begin
      if not Assigned(FEOL) then
        GetXCalEvents;

      n := FEOL.IndexOf(ADate);
      if n >= 0 then
      begin
        FCanvas.Font.Style := [fsBold];
        if HighlightVacations then
          repeat
            if FEOL[n].IsVacation then
            begin
              FCanvas.Font .Color := FWeekendColor;
              Break;
            end;

            //fixed Sep 19 2008
            n := FEOL.IndexOf(ADate, n + 1);
          until n < 0;

      end;
    end;
  end;

begin
  //xxx
  if Assigned(FXCalendar) then
  begin
    FXCalendar.DecodeDate(SelDate, ye, mo, sda);
    FXCalendar.DecodeDate(TheDate, ye, mo, da);
    FXCalendar.DecodeDate(Now, cye, cmo, cda);
  end
  else
  begin
    DecodeDate(SelDate, ye, mo, sda);
    DecodeDate(TheDate, ye, mo, da);
    DecodeDate(Now, cye, cmo, cda);
  end;

  FCanvas.Font.Assign(FFont);

  if FBrowsers.FPrevMonth then
    PaintArrowLeft;

  if FBrowsers.FNextMonth then
    PaintArrowRight;

  if FBrowsers.FPrevYear then
    PaintDblArrowLeft;

  if FBrowsers.FNextYear then
    PaintDblArrowRight;

  PaintMonthLabel;
  PaintYearLabel;

  //xxx
  if Assigned(FXCalendar) then
    d := FXCalendar.StartOfAMonth(ye, mo)
  else
    d := EncodeDate(ye, mo, 1);

  //first day of the month
  //xxx
  if Assigned(FXCalendar) then
    fd := FXCalendar.DayOfWeekToOffset(FXCalendar.DayOfWeek(d))
  else
  begin
    fd := DayOfWeek(d) - 1 - StartDay;
    if fd < 0 then
      fd := fd + 7;
  end;

  //determine previous month
  //xxx
  pye := ye;
  pmo := mo;
  DummyDay := 1;
  if Assigned(FXCalendar) then
    FXCalendar.IncAMonth(pye, pmo, DummyDay, -1)
  else
  begin
    if mo = 1 then
    begin
      pmo := 12;
      pye := ye - 1;
    end
    else
    begin
      pmo := mo - 1;
      pye := ye;
    end;
  end;

  //determine next month
  //xxx
  nye := ye;
  nmo := mo;
  DummyDay := 1;
  if Assigned(FXCalendar) then
    FXCalendar.IncAMonth(nye, nmo, DummyDay, 1)
  else
  begin
    if mo = 12 then
    begin
      nmo := 1;
      nye := ye + 1;
    end
    else
    begin
      nmo := mo + 1;
      nye := ye;
    end;
  end;

  with FCanvas do
  begin
    Font.Assign(FDayfont);
    SetBKMode(Handle, TRANSPARENT);
    r := rect(0,0,100,100);
    dstr := 'gh';
    {$IFNDEF TMSDOTNET}
    wfh := DrawText(FCanvas.Handle, PChar(dstr), length(dstr), r,
        DT_CENTER or DT_TOP or DT_SINGLELINE or DT_CALCRECT);
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    wfh := DrawText(FCanvas.Handle, dstr, length(dstr), r,
        DT_CENTER or DT_TOP or DT_SINGLELINE or DT_CALCRECT);
    {$ENDIF}

    //draw day names
    if FLook = Look3D then
    begin
      r := Rect(mmb.Left, mmcb.Bottom, mmb.Right, mmtb.Bottom);
      if HeaderColor <> clNone then
      begin
        FCanvas.Brush.Color := HeaderColor;
        FCanvas.Rectangle(r.Left,r.Top,r.Right,r.Bottom);
      end;
      Frame3D(FCanvas, r, clWhite, clGray, 1);
    end;

    for i := 1 to 7 do
    begin
      r.Left := mmdb.Left + (i - 1) * Fdx;
      r.Right := r.Left + Fdx - 1;
      r.Bottom := mmtb.Bottom;
      r.Top := Max(mmcb.Bottom, r.Bottom - wfh - FSideMargins);
      //xxx
      if Assigned(FXCalendar) then
        dstr := FXCalendar.FormatSettings.ShortDayNames[((i - 1) + FXCalendar.WeekStartDay - 1) mod 7]
      else
        dstr := ShortDayNames[((i - 1) + 2 - 1) mod 7];
      {$IFNDEF TMSDOTNET}
      DrawText(FCanvas.Handle, PChar(dstr), length(dstr), r,
        DT_CENTER or DT_TOP or DT_SINGLELINE);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      DrawText(FCanvas.Handle, dstr, length(dstr), r,
        DT_CENTER or DT_TOP or DT_SINGLELINE);
      {$ENDIF}
    end;

    FCanvas.Brush.Color := self.Color;

    //draw line under days
    pen.Color := FLineColor;

    MoveTo(mmtb.Left, mmtb.Bottom);
    LineTo(mmtb.Right, mmtb.Bottom);

    if FLine3D then
    begin
      Pen.Color := clwhite;
      MoveTo(mmtb.Left, mmtb.Bottom + 1);
      LineTo(mmtb.Right, mmtb.Bottom + 1);
    end;


    if FShowWeeks then
    begin
      Pen.Color := FLineColor;
      MoveTo(mmwb.Right, mmtb.Bottom + 1);
      LineTo(mmwb.Right, mmwb.Bottom);

      if Line3D then
      begin
        Pen.Color := clwhite;
        MoveTo(mmwb.Right + 1, mmtb.Bottom + 1);
        LineTo(mmwb.Right + 1, mmwb.Bottom);
      end;

      FCanvas.Font.Assign(FDayfont);


      r.Left := mmwb.Left;
      r.Right := mmwb.Right;
      r.Bottom := mmtb.Bottom;
      r.Top := Max(mmcb.Bottom, r.Bottom - wfh - FSideMargins);

      SetBKMode(FCanvas.Handle, TRANSPARENT);

      {$IFNDEF TMSDOTNET}
      DrawText(FCanvas.Handle, PChar(FWeekName), Length(FWeekName), r,
        DT_CENTER or DT_TOP or DT_SINGLELINE);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      DrawText(FCanvas.Handle, FWeekName, Length(FWeekName), r,
        DT_CENTER or DT_TOP or DT_SINGLELINE);
      {$ENDIF}

      FCanvas.Brush.Color := Color;
      FCanvas.Font.Assign(FWeekFont);

      SetBKMode(FCanvas.Handle, TRANSPARENT);

      //xxx
      //draw week numbers
      for i := 1 to 6 do
      begin
        dt := d + (i - 1) * 7;
        if Assigned(FXCalendar) then
        begin
          if dt > FXCalendar.EndOfAMonth(ye, mo) then dt := FXCalendar.StartOfTheWeek(dt);
          dstr := IntToStr(FXCalendar.WeekOfTheYear(dt));
        end
        else
        begin
          if dt > EncodeDate(ye, mo, DaysInMonth(mo, ye)) then dt := StartOfTheWeek(dt);
          dstr := IntToStr(WeekOfTheYear(dt));
        end;

        with r do
        begin
          left := mmwb.Left;
          right := mmwb.Right;
          top := mmwb.Top + (i - 1) * Fdy;
          bottom := r.Top + Fdy - 1;
        end;
        {$IFNDEF TMSDOTNET}
        DrawText(FCanvas.Handle, PChar(dstr), length(dstr), r,
          DT_CENTER or DT_VCENTER or DT_SINGLELINE);
        {$ENDIF}
        {$IFDEF TMSDOTNET}
        DrawText(FCanvas.Handle, dstr, length(dstr), r,
          DT_CENTER or DT_VCENTER or DT_SINGLELINE);
        {$ENDIF}
      end;
    end;

    FCanvas.Font.Assign(FFont);
    OldStyle := Font.Style;

    SetBKMode(FCanvas.Handle, TRANSPARENT);

    {draw day numbers}
    for i := 1 to 7 do
      for j := 1 to 6 do
      begin
        r := XYToRect(i, j);
{        r.Left := mmdb.Left + (i - 1) * Fdx;
        r.Right := r.Left + Fdx - 1;
        r.Top := mmdb.Top + (j - 1) * Fdy;
        r.Bottom := r.Top + Fdy - 1;}

        Font.Style := OldStyle;

        if (fd >= (i + (j - 1) * 7)) then
        begin
          if FShowDaysBefore then
          begin
            //xxx
            if Assigned(FXCalendar) then
              d := FXCalendar.EncodeDate(pye, pmo, FXCalendar.DaysInAMonth(pye, pmo) - (fd - i))
            else
              d := EncodeDate(pye, pmo, DaysInMonth(pmo, pye) - (fd - i));
            inlist := (DateCol.IsDateInList(d) <> -1) and FShowSelection;
            if inlist then
            begin
              Brush.Color := FDateSelectColor;
              Pen.Color := FDateSelectColor;
              Font.Color := FSelectFontColor;
              Fillrect(r);
            end
            else
              Brush.color := self.Color;

            if (d = FHoverDate) and (FDateHoverColor <> clNone) then
            begin
              if inlist then
                Brush.Color := FDateDownColor
              else
                Brush.Color := FDateHoverColor;
              Pen.Color := FBorderColor;
              Pen.Width := 1;
              Rectangle(r.Left, r.Top, r.Right, r.Bottom);
            end;

            IsEvent := HasEvent(d, EventDate);

            Font.Color := FInversColor;

            if IsEvent then
            begin
              Font.Style := [fsBold];
              Font.Color := FEventDayColor;
              if Assigned(EventDate) then
              begin
                PaintEventMarker(R, EventDate.Color, EventDate.Shape);
                FCanvas.Font.Color := EventDate.FontColor;
              end
              else
                PaintEventMarker(R, FEventMarkerColor, FEventMarkerShape);
            end;

            //xxx
            CheckXCalEvent(d, False);

            if not CheckDateRange(d) then
              Font.Color := FInactiveColor;
            //xxx
            if Assigned(FXCalendar) then
              dstr := IntToStr(FXCalendar.DaysInAMonth(pye, pmo) - (fd - i))
            else
              dstr := IntToStr(DaysInMonth(pmo, pye) - (fd - i));


            SetBKMode(FCanvas.Handle, TRANSPARENT);

            if Assigned(FOnCellDraw) and FCustomDraw then
              FOnCellDraw(Self, FCanvas, d, false, IsEvent, false, r)
            else
              {$IFNDEF TMSDOTNET}
              Drawtext(FCanvas.Handle, PChar(dstr), length(dstr), r,
                DT_CENTER or DT_VCENTER or DT_SINGLELINE);
              {$ENDIF}
              {$IFDEF TMSDOTNET}
              Drawtext(FCanvas.Handle, dstr, length(dstr), r,
                DT_CENTER or DT_VCENTER or DT_SINGLELINE);
              {$ENDIF}

            Brush.Color := self.Color;
            Pen.Color := FTextcolor;
          end;
        end
        else
        begin
          //xxx
          if Assigned(FXCalendar) then
            dddd := FXCalendar.DaysInAMonth(ye, mo)
          else
            dddd := DaysInMonth(mo, ye);
          if ((i + (j - 1) * 7 - fd) > dddd) then
          begin
            if FShowDaysAfter then
            begin
              //xxx
              if Assigned(FXCalendar) then
                d := FXCalendar.EncodeDate(nye, nmo, i + (j - 1) * 7 - fd - FXCalendar.DaysInAMonth(ye, mo))
              else
                d := EncodeDate(nye, nmo, i + (j - 1) * 7 - fd - DaysInMonth(mo, ye));
              Font.Color := FInversColor;
              Brush.Color := Color;
              inlist := (DateCol.IsDateInList(d) <> -1) and FShowSelection;
              if (inlist) then
              begin
                Brush.Color := FDateSelectColor;
                Pen.Color := FDateSelectColor;
                Font.Color := FSelectFontColor;
                FillRect(r);
              end;

              if (d = FHoverDate) and (FDateHoverColor <> clNone) then
              begin
                if inlist then
                  Brush.Color := FDateDownColor
                else
                  Brush.Color := FDateHoverColor;
                Pen.Color := FBorderColor;
                Pen.Width := 1;
                Rectangle(r.Left, r.Top, r.Right, r.Bottom);
              end;

              if not checkdaterange(d) then font.color := fInactiveColor;

              IsEvent := HasEvent(d, EventDate);

              if IsEvent then
              begin
                Font.Style := [fsBold];
                Font.Color := FEventDayColor;
                if Assigned(EventDate) then
                begin
                  PaintEventMarker(R, EventDate.Color, EventDate.Shape);
                  FCanvas.Font.Color := EventDate.FontColor;
                end
                else
                  PaintEventMarker(R, FEventMarkerColor, FEventMarkerShape);
              end;

              //xxx
              CheckXCalEvent(d, False);

              if not CheckDateRange(d) then
                Font.Color := FInactiveColor;

              //xxx
              if Assigned(FXCalendar) then
                dstr := IntToStr(i + (j - 1) * 7 - fd - FXCalendar.DaysInAMonth(ye, mo))
              else
                dstr := IntToStr(i + (j - 1) * 7 - fd - DaysInMonth(mo, ye));
              SetBKMode(FCanvas.Handle, TRANSPARENT);

              if Assigned(FOnCellDraw) and FCustomDraw then
                FOnCellDraw(Self, FCanvas, d, false, IsEvent, false, r)
              else
                {$IFNDEF TMSDOTNET}
                DrawText(FCanvas.Handle, PChar(dstr), length(dstr), r,
                  DT_CENTER or DT_VCENTER or DT_SINGLELINE);
                {$ENDIF}
                {$IFDEF TMSDOTNET}
                DrawText(FCanvas.Handle, dstr, length(dstr), r,
                  DT_CENTER or DT_VCENTER or DT_SINGLELINE);
                {$ENDIF}

              Brush.Color := self.Color;
              Pen.Color := FTextColor;
            end;
          end
          else
          begin
            //xxx
            if Assigned(FXCalendar) then
              d := FXCalendar.EncodeDate(ye, mo, (i + (j - 1) * 7 - fd))
            else
              d := EncodeDate(ye, mo, (i + (j - 1) * 7 - fd));

            IsEvent := HasEvent(d, EventDate);

            if IsEvent then
            begin
              Font.Style := [fsBold];
              Font.Color := FEventDayColor;
              if Assigned(EventDate) then
              begin
                PaintEventMarker(R, EventDate.Color, EventDate.Shape);
                FCanvas.Font.Color := EventDate.FontColor;
              end
              else
                PaintEventMarker(R, FEventMarkerColor, FEventMarkerShape);
            end;

            inlist := (DateCol.IsDateInList(d) <> -1) and (FShowSelection);
            if inlist then
            begin
              if inlist then
              begin
                Brush.Color := FDateSelectColor;
                Font.Color := FSelectFontColor;
              end
              else
              begin
                if (GetFocus = self.Handle) then
                begin
                  Brush.Color := FFocusColor;
                  Font.Color := FInversColor;
                  Pen.Color := FFocusColor;
                end
                else
                begin
                  Brush.Color := FDateSelectColor;
                  Font.Color := FSelectFontColor;
                  Pen.Color := FDateSelectColor;
                end;
              end;

              if not CheckDateRange(d) then
                Font.Color := FInactiveColor;

              Fillrect(r);

              if (d = FHoverDate) and (FDateHoverColor <> clNone) then
              begin
                Brush.Color := FDateDownColor;
                Pen.Color := FBorderColor;
                Pen.Width := 1;
                Rectangle(r.Left, r.Top, r.Right, r.Bottom);
              end
              else
                FilLRect(r);

              if fLook = Look3d then
                Frame3d(canvas, r, clWhite, clGray, 1);

              Setbkmode(FCanvas.Handle, TRANSPARENT);

              if Assigned(FOnCellDraw) and FCustomDraw then
                FOnCellDraw(Self, FCanvas, d, false, IsEvent, true, r)
              else
                {$IFNDEF TMSDOTNET}
                DrawText(FCanvas.Handle, PChar(IntToStr(i + (j - 1) * 7 - fd)),
                  length(IntToStr(i + (j - 1) * 7 - fd)), r, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
                {$ENDIF}
                {$IFDEF TMSDOTNET}
                DrawText(FCanvas.Handle, IntToStr(i + (j - 1) * 7 - fd),
                  length(IntToStr(i + (j - 1) * 7 - fd)), r, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
                {$ENDIF}

              Brush.Color := self.Color;
              Pen.Color := FTextColor;
            end
            else
            begin //check to see if weekend day here

              if (d = FHoverDate) and (FDateHoverColor <> clNone) then
              begin
                Brush.Color := FDateHoverColor;
                Pen.Color := FBorderColor;
                Pen.Width := 1;
                Rectangle(r.Left, r.Top, r.Right, r.Bottom);
              end;

              if not IsEvent then
              begin
                if IsInActiveDay(d) then
                  Font.Color := FWeekendcolor
                else
                  Font.Color := FTextcolor;
              end;

              //xxx
              CheckXCalEvent(d, True);

              if not CheckDateRange(d) then
                Font.Color := FInactiveColor;
              if FLook = Look3d then
                Frame3d(FCanvas, r, clWhite, clGray, 1);
              SetBKMode(FCanvas.handle, TRANSPARENT);

              if Assigned(FOnCellDraw) and FCustomDraw then
                FOnCellDraw(Self, FCanvas, d, false, IsEvent, true, r)
              else
                {$IFNDEF TMSDOTNET}
                DrawText(FCanvas.Handle, PChar(IntToStr(i + (j - 1) * 7 - fd)),
                  length(IntToStr(i + (j - 1) * 7 - fd)), r, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
                {$ENDIF}
                {$IFDEF TMSDOTNET}
                DrawText(FCanvas.Handle, IntToStr(i + (j - 1) * 7 - fd),
                  length(IntToStr(i + (j - 1) * 7 - fd)), r, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
                {$ENDIF}
            end;
          end;
        end;

        if (GetFocus = self.Handle) and (da = i + (j - 1) * 7 - fd) then
        begin
          Pen.Color := clBlack;
          WinProcs.DrawFocusRect(FCanvas.Handle, r);
        end;

        //draw current day in active color
        if (cda = i + (j - 1) * 7 - fd) and (cmo = mo) and (cye = ye) and FShowToday then
        begin
          case TodayStyle of
          tsSunken: Pen.Color := clGray;
          tsRaised: Pen.Color := clWhite;
          tsFlat: Pen.Color := LineColor;
          end;

          MoveTo(r.Left, r.Bottom);
          LineTo(r.Left, r.Top);
          LineTo(r.Right, r.Top);

          case TodayStyle of
          tsSunken: Pen.Color := clWhite;
          tsRaised: Pen.Color := clGray;
          tsFlat: Pen.Color := LineColor;
          end;

          LineTo(r.Right, r.Bottom);
          LineTo(r.Left, r.Bottom);
          Pen.Color := clBlack;
        end;
      end;
  end;
end;

procedure TXCalPlannerCalendar.PaintToday;
var
  SaveRTLO: Boolean;
begin
  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  if not Assigned(FCanvas) then
    Exit;

  FCanvas.Font.Assign(Font);

  SetBkMode(FCanvas.Handle, TRANSPARENT);

  if flgt then
  begin
    FCanvas.Font.Style := Canvas.Font.Style + [fsUnderline];
    FCanvas.Font.Color := SelectColor;
  end;

  //xxx
  if Assigned(FXCalendar) then
    FCanvas.TextOut(mmgtb.Left, mmgtb.Top, FXCalendar.FormatDateTime(TodayFormat, Now))
  else
    FCanvas.TextOut(mmgtb.Left, mmgtb.Top, FormatDateTime(TodayFormat, Now));

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.SetDate(da, mo, ye: word);
var
  R: TRect;
  dt: TDateTime;
begin
  r := DateToRect(SelDate);

  //xxx
  if Assigned(FXCalendar) then
    dt := FXCalendar.EncodeDate(ye, mo, da)
  else
    dt := EncodeDate(ye, mo, da);
  TheDate := dt;
  SelDate := thedate;

  {$IFNDEF TMSDOTNET}
  M_InvalidateRect(Handle, @r, False);
  {$ENDIF}

  {$IFDEF TMSDOTNET}
  M_InvalidateRect(Handle, r, False);
  {$ENDIF}

  SetLabel(mo, ye);
  InitDate := SelDate;
  DateCol.Clear;
  DateCol.Add.Date := seldate;

  //xxx
  if Assigned(FXCalEvents) then
    GetXCalEvents;

  Invalidate;
end;

procedure TXCalPlannerCalendar.GetDate(var da, mo, ye: word);
begin
  //xxx
  if Assigned(FXCalendar) then
    FXCalendar.DecodeDate(seldate, ye, mo, da)
  else
    DecodeDate(seldate, ye, mo, da);
end;

function TXCalPlannerCalendar.GetDatesAsText: string;
var
  i: integer;
  s: string;
  Continuous: Boolean;
begin
  Continuous := False;
  s := '';
  with Dates do
  begin
    for i := 0 to Count - 2 do
    begin
      if Items[i].Date + 1 = Items[i + 1].Date then
      begin
        if not Continuous then
        begin
          //xxx
          if Assigned(FXCalendar) then
            s := s + FXCalendar.DateToStr(Items[i].Date) + '-'
          else
            s := s + DateToStr(Items[i].Date) + '-';
          Continuous := True;
        end
      end
      else
      begin
        //xxx
        if Assigned(FXCalendar) then
          s := s + FXCalendar.DateToStr(Items[i].Date) + ','
        else
          s := s + DateToStr(Items[i].Date) + ',';
        Continuous := False;
      end;
    end;

    if Count > 0 then
      //xxx
      if Assigned(FXCalendar) then
        s := s + FXCalendar.DateToStr(Items[Count - 1].Date)
      else
        s := s + DateToStr(Items[Count - 1].Date);
  end;
  Result := s;
end;

procedure TXCalPlannerCalendar.RepaintDate(dt: tdatetime);
var
  r: TRect;
begin
  if FUpdateCount > 0 then
    Exit;

  r := DateToRect(dt);

  {$IFNDEF TMSDOTNET}
  M_InvalidateRect(self.handle, @r, True);
  {$ENDIF}
  {$IFDEF TMSDOTNET}
  M_InvalidateRect(self.handle, r, True);
  {$ENDIF}
end;

function TXCalPlannerCalendar.DateToXY(dt: tdatetime): tpoint;
var
  ye, mo, da: word;
  tmpdt: tdatetime;
  fd: integer;
  rx, ry: integer;

begin
  //xxx
  if Assigned(FXCalendar) then
    tmpdt := FXCalendar.StartOfTheWeek(FXCalendar.StartOfTheMonth(thedate))
  else
  begin
    decodedate(thedate, ye, mo, da);

    tmpdt := encodedate(ye, mo, 1);  {first day of month}

    fd := dayofweek(tmpdt) - 1 - startday;

    if fd < 0 then fd := fd + 7;

    tmpdt := tmpdt - fd; {this is the first day of the calendar}
  end;

  fd := round(dt - tmpdt) + 1;

  rx := (fd mod 7);
  ry := (fd div 7) + 1;

  if (rx = 0) then
  begin
    rx := 7;
    dec(ry);
  end;
  Result.x := rx;
  Result.y := ry;
end;

function TXCalPlannerCalendar.XYToRect(const X, Y: Integer): TRect;
var
  r: trect;
begin
  r.top := mmdb.Top + (Y - 1) * Fdy;
  r.bottom := r.top + Fdy - 1;
  r.left := mmdb.Left + (X - 1) * Fdx;
  r.right := r.left + Fdx - 1;

  Result := r;
end;

function TXCalPlannerCalendar.DateToRect(dt: tdatetime): trect;
var
  pt: TPoint;
begin
  pt := DateToXY(dt);
  if pt.x = 0 then pt.x := 7;

  Result := XYToRect(pt.X, pt.Y);
end;

//xxx
function TXCalPlannerCalendar.DateAtXY(X,Y: Integer; var ADate: TDateTime): Boolean;
var
  dddd: TDateTime;
begin
  Result := False;
  if IsInBounds(X, Y, mmdb) then
  begin
    ADate := XYToDate(X, Y, False);
    Result := True;

    if not ShowDaysBefore then
    begin
      if Assigned(FXCalendar) then
        dddd := FXCalendar.StartOfAMonth(Year, Month)
      else
        dddd := EncodeDate(Year, Month, 1);
      if ADate < dddd then
        Result := False;
    end;

    if not ShowDaysAfter then
    begin
      if Assigned(FXCalendar) then
        dddd := FXCalendar.EndOfAMonth(Year, Month)
      else
        dddd := EncodeDate(Year, Month, DaysInMonth(Month, Year));
      if ADate > dddd then
        Result := False;
    end;
  end;
end;

function TXCalPlannerCalendar.FirstDate: TDateTime;
var
  ye, mo, da: word;
  tmpdt: tdatetime;
begin
  //xxx
  if Assigned(FXCalendar) then
    tmpdt := FXCalendar.StartOfTheMonth(seldate)
  else
  begin
    DecodeDate(seldate, ye, mo, da);
    tmpdt := EncodeDate(ye, mo, 1);
  end;

  if not FShowDaysBefore then
  begin
    Result := tmpdt;
    Exit;
  end;

  if Assigned(FXCalendar) then
    Result := FXCalendar.StartOfTheWeek(tmpdt)
  else
    Result := StartOfTheWeek(tmpdt);
end;

function TXCalPlannerCalendar.LastDate: TDateTime;
var
  ye, mo, da: word;
  tmpdt: tdatetime;
begin
  //xxx

  if not FShowDaysAfter then
  begin
    if Assigned(FXCalendar) then
      tmpdt := FXCalendar.EndOfTheMonth(seldate)
    else
    begin
      DecodeDate(seldate, ye, mo, da);
      tmpdt := EncodeDate(ye, mo, DaysInMonth(mo,ye));
    end;
    Result := tmpdt;
    Exit;
  end;

  if Assigned(FXCalendar) then
    Result := FXCalendar.StartOfTheWeek(FXCalendar.StartOfTheMonth(seldate)) + (7 * 6 - 1)
  else
    Result := StartOfTheWeek(tmpdt) + (7 * 6 - 1);
end;

//xxx
function TXCalPlannerCalendar.XYToDate(X, Y: integer; change: Boolean): tdatetime;
var
  ye, mo, da: word;
  xcal, ycal: integer;
  sda, fd: integer;
  tmpdt: tdatetime;
  dddd: Integer;
begin
  xposin := x;
  yposin := y;
  xcal := 0;
  ycal := 0;

  if Assigned(FXCalendar) then
  begin
    FXCalendar.DecodeDate(seldate, ye, mo, da);
    tmpdt := FXCalendar.StartOfAMonth(ye, mo);
    fd := FXCalendar.DayOfWeekToOffset(FXCalendar.DayOfWeek(tmpdt));
  end
  else
  begin
    DecodeDate(seldate, ye, mo, da);
    tmpdt := EncodeDate(ye, mo, 1);
    fd := DayOfWeek(tmpdt) - 1 - StartDay;
    if (fd < 0) then fd := fd + 7;
  end;

  x := x - mmdb.Left;
  y := y - mmdb.Top;

  if (Fdx > 0) and (Fdy > 0) then
  begin
    xcal := x div Fdx;
    ycal := y div Fdy;
  end;

  if xcal > 6 then xcal := 6;
  if ycal > 5 then ycal := 5;

  sda := xcal + 7 * ycal - fd + 1;

  if Assigned(FXCalendar) then
    dddd := FXCalendar.DaysInAMonth(ye, mo)
  else
    dddd := DaysInMonth(mo, ye);

  if sda < 1 then
  begin
    if Assigned(FXCalendar) then
    begin
      FXCalendar.IncAMonth(ye, mo, da, -1);
      dddd := FXCalendar.DaysInAMonth(ye, mo);
    end
    else
    begin
      Dec(mo);
      if mo = 0 then
      begin
        mo := 12;
        Dec(ye);
      end;
      dddd := DaysInMonth(mo, ye);
    end;
    sda := dddd + sda;
    if Change and FShowDaysBefore then
      ChangeMonth(-1);
  end
  else if sda > dddd then
  begin
    sda := sda - dddd;
    if Assigned(FXCalendar) then
      FXCalendar.IncAMonth(ye, mo, da, 1)
    else
    begin
      Inc(mo);
      if mo > 12 then
      begin
        mo := 1;
        Inc(ye);
      end;
    end;
    if Change and FShowDaysAfter then
      ChangeMonth(+1);
  end;

  da := sda;
  if Assigned(FXCalendar) then
    Result := FXCalendar.EncodeDate(ye, mo, da)
  else
    Result := EncodeDate(ye, mo, da);
end;

procedure TXCalPlannerCalendar.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  dt,oldh: TDateTime;
  newpt: TPoint;
  SelItem: TSelDateItem;
//  WidthX1, WidthX2,HeightY1, HeightY2: integer;
  i, n: Integer;
  isEvent: boolean;

begin
  if Assigned(OnMouseMove) then
    OnMouseMove(Self, Shift, X, Y);

  {mmm}
  if UseRightToLeftAlignment then
    X := ClientWidth - X;
  {/mmm}

  if IsInBounds(x, y, mmlmb) and FMonthSelect
    and ShowMonthSelector and Enable then
  begin
    if not flglma then
    begin
      flglma := True;
      PaintMonthLabel;
      Cursor := crHandPoint;
    end;
  end
  else if flglma then
  begin
    Cursor := FOldCursor;
    flglma := False;
    PaintMonthLabel;
  end;

  if IsInBounds(x, y, mmlyb) and FMonthSelect
    and ShowYearSelector and Enable then
  begin
    if not flglya then
    begin
      flglya := True;
      PaintYearLabel;
      Cursor := crHandPoint;
    end;
  end
  else if flglya then
  begin
    Cursor := FOldCursor;
    flglya := False;
    PaintYearLabel;
  end;

  if ShowGotoToday and IsInBounds(x, y, mmgtb) and Enable then
  begin
    flgt := True;
    PaintToday;
    Cursor := crHandPoint;
  end
  else
    if flgt then
    begin
      flgt := False;
      Cursor := FOldCursor;
      Invalidate;
      //PaintToday;
    end;

  BrowserHint := '';

  if FBrowsers.FPrevMonth and Enable then
  begin
    if IsInBounds(x, y, mmpmb) then
    begin
      if CheckDateRange(Diffmonth(-1)) then
        Cursor := crHandPoint;

      BrowserHint := FHintPrevMonth;
      FLastHintPos := Point(mmpmb.Left, mmpmb.Bottom);

      if not flgl then
      begin
        flgl := True;
        PaintArrowLeft;
      end;
    end
    else
    begin
      if flgl then
      begin
        Cursor := FOldCursor;
        flgl := False;

//Added Oct 01 2008  -  Thanks to seyed_farid for pointing out the problem
        Application.CancelHint;

        {$IFNDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, @mmpmb, False);
        {$ENDIF}
        {$IFDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, mmpmb, False);
        {$ENDIF}
      end;
    end;
  end;

  if FBrowsers.FPrevYear and Enable then
  begin

    if IsInBounds(x, y, mmpyb) then
    begin
      if CheckDateRange(DiffYear(-1)) then
        Cursor := crHandPoint;

      BrowserHint := FHintPrevYear;
      FLastHintPos := Point(mmpyb.Left, mmpyb.Bottom);

      if not dflgl then
      begin
        dflgl := True;
        PaintDblArrowLeft;
      end;
    end
    else
    begin
      if dflgl then
      begin
        Cursor := FOldCursor;
        dflgl := False;

//Added Oct 01 2008  -  Thanks to seyed_farid for pointing out the problem
        Application.CancelHint;

        {$IFNDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, @mmpyb, False);
        {$ENDIF}
        {$IFDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, mmpyb, False);
        {$ENDIF}
      end;
    end;
  end;

  if FBrowsers.FNextMonth and Enable then
  begin
    if IsInBounds(x, y, mmnmb) then
    begin
      if CheckDateRange(DiffMonth(+1)) then
        Cursor := crHandPoint;

      BrowserHint := FHintNextMonth;
      FLastHintPos := Point(mmnmb.Left, mmnmb.Bottom);
      if not flgr then
      begin
        flgr := True;
        PaintArrowRight;
      end;
    end
    else
    begin
      if flgr then
      begin
        Cursor := FOldCursor;
        flgr := False;

//Added Oct 01 2008  -  Thanks to seyed_farid for pointing out the problem
        Application.CancelHint;

        {$IFNDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, @mmnmb, False);
        {$ENDIF}
        {$IFDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, mmnmb, False);
        {$ENDIF}
      end;
    end;
  end;

  if FBrowsers.FNextYear and Enable then
  begin
    if IsInBounds(x, y, mmnyb) then
    begin
      if CheckDateRange(DiffYear(+1)) then
        Cursor := crHandPoint;

      BrowserHint := FHintNextYear;
      FLastHintPos := Point(mmnyb.Left, mmnyb.Bottom);
      if dflgr = False then
      begin
        dflgr := True;
        PaintDblArrowRight;
      end;
    end
    else
    begin
      if dflgr then
      begin
        Cursor := FOldCursor;
        dflgr := False;

//Added Oct 01 2008  -  Thanks to seyed_farid for pointing out the problem
        Application.CancelHint;

        {$IFNDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, @mmnyb, False);
        {$ENDIF}
        {$IFDEF TMSDOTNET}
        M_InvalidateRect(self.Handle, mmnyb, False);
        {$ENDIF}
      end;
    end;
  end;


  if not (flgl or flgr or dflgl or dflgr or flgt or flglma or flglya) and (Cursor <> FOldCursor) then
  begin
    Cursor := FOldCursor;
  end;

  EventHint := '';

  if IsInBounds(x, y, mmdb) then
  begin
    dt := XYToDate(X, Y, False);

    if dt <> FHoverDate then
    begin
      oldh := FHoverDate;
      FHoverDate := dt;
      RepaintDate(oldh);
      RepaintDate(dt);
    end;

    SelItem := Events.Dates[dt];

    if Assigned(SelItem) then
      EventHint := SelItem.Hint;

    if (Fdx > 0) and (Fdy > 0) then
    begin
      newpt.x := (x - mmdb.Left) div Fdx;
      newpt.y := (y - mmdb.Top) div Fdy;
    end;

    if ((newpt.x <> FLastHintPos.x) or
      (newpt.y <> FLastHintPos.y)) and ShowHintBusy then
    begin
      Application.CancelHint;
      ShowHintbusy := False;
    end;

    FLastHintPos := newpt;

    if MouseSel and (MovDate <> dt) and CheckDateRange(dt) then
    begin
      if MovDate <> -1 then
        DateCol.DelRange(clkdate, movdate);

      MovDate := dt;

      if movdate > clkdate then
      begin
        for i := 0 to trunc(movdate-clkdate) do
        begin
          dt := clkdate + i;

          if IsVisibleDay(dt) then
          begin
            if DateCol.IsDateInList(dt) = -1 then
              DateCol.Add.Date := dt;
          end;
        end;
      end
      else
      begin
        for i := 0 to trunc(clkdate-movdate) do
        begin
          dt := MovDate + i;

          if IsVisibleDay(dt) then
          begin
            if DateCol.IsDateInList(dt) = -1 then
              DateCol.Add.Date := dt;
          end;
        end;
      end;
    end;

    //xxx
    if Assigned(FXCalEvents) then
    begin
      if not Assigned(FEOL) then
        GetXCalEvents;

      n := FEOL.IndexOf(dt);
      if n >= 0 then
      begin
        repeat
          if EventHint <> '' then
            EventHint := EventHint + ' - ';

          EventHint := EventHint + FEOL[n].DisplayText;

          n := FEOL.IndexOf(dt, n + 1);
        until n < 0;
      end;
    end;

    if Assigned(OnGetDateHint) then
      OnGetDateHintString(self, dt, isEvent, EventHint);
  end
  else
  begin
    oldh := FHoverDate;
    FHoverDate := 0;
    RepaintDate(oldh);
  end;

  if (EventHint = '') and (BrowserHint = '')  then
    Application.CancelHint;
end;

function TXCalPlannerCalendar.IsVisibleDay(dt: TDateTime): Boolean;
begin
  Result := False;
  if (GetMonth(dt) > GetMonth(SelDate)) and not FShowDaysAfter then
    Exit;

  if (GetMonth(dt) < GetMonth(SelDate)) and not FShowDaysBefore then
    Exit;

  Result := True;
end;

procedure TXCalPlannerCalendar.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ye, da, omo, nmo: word;
  lidx,sidx: integer;
  origdate: TDatetime;
  r: TRect;
  flg: Boolean;
//  WidthX1, WidthX2,HeightY1, HeightY2: integer;
  isSelected: Boolean;

begin
  if (Button <> mbLeft) then
  begin
    inherited;
    Exit;
  end
  else
    if Assigned(OnMouseDown) then
      OnMouseDown(Self,Button, Shift, X, Y);

  if not Enable then
    Exit;

  {mmm}
  if UseRightToLeftAlignment then
    X := ClientWidth - X;
  {/mmm}

  Cursor := FOldCursor;

  origdate := seldate;
  xposin := $7fff;
  yposin := $7fff;

  if not (GetFocus = self.Handle) then
    SetFocus;

  if ShowMonthSelector and IsInBounds(x, y, mmlmb) then
  begin
    DoMonthPopup;
    Exit;
  end;

  if ShowYearSelector and IsInBounds(x, y, mmlyb) then
  begin
    DoYearPopup;
    Exit;
  end;

  flg := False;

  if FBrowsers.FPrevMonth then
  begin
    if IsInBounds(x, y, mmpmb) then
    begin
      ChangeMonth(-1);
      flg := True;
    end;
  end;

  if FBrowsers.FPrevYear then
  begin
    if IsInBounds(x, y, mmpyb) then
    begin
      ChangeYear(-1);
      flg := True;
    end;
  end;

  if FBrowsers.FNextMonth then
  begin
    if IsInBounds(x, y, mmnmb) then
    begin
      ChangeMonth(1);
      flg := True;
    end;
  end;

  if FBrowsers.FNextYear then
  begin
    if IsInBounds(x, y, mmnyb) then
    begin
      ChangeYear(1);
      flg := True;
    end;
  end;

  if flg then
  begin
    DiffCheck(origdate, seldate);
    Exit;
  end;

  if FMultiSelect and not Dragging then
    MouseSel := True;

  movdate := -1;

//  SetCapture(Handle);

  if FAllDaySelect and FMultiSelect and
    IsInBounds(x, y, Rect(mmdb.Left, mmcb.Bottom + 1, mmdb.Right, mmtb.Bottom)) then
  begin
    ClkDate := XYToDate(x, mmdb.Top, False);
    if not ((GetKeyState(VK_CONTROL) and $8000 = $8000) and FMultiSelect) then
      DateCol.Clear;

    isSelected := true;
    for lidx := 1 to 6 do
    begin
      if DateCol.IsDateInList(ClkDate + (lidx - 1) * 7) = -1 then
        isSelected := False;
    end;

    if not isSelected then
    begin
      for lidx := 1 to 6 do
        if IsVisibleDay(ClkDate + (lidx - 1) * 7) then
          with DateCol.Add do Date := ClkDate + (lidx - 1) * 7;
    end
    else
    begin
      for lidx := 1 to 6 do
      begin
        sidx := DateCol.IsDateInList(ClkDate + (lidx - 1) * 7);
        if sidx <> -1 then
        DateCol.Items[sidx].Free;
      end;
    end;

    Invalidate;
    if Assigned(FOnAllDaySelect) then
      FOnAllDaySelect(Self);
  end;

  if FShowWeeks and FWeekSelect and FMultiSelect
    and IsInBounds(x, y, mmwb) then
  begin
    ClkDate := XYToDate(mmdb.Left, y, False);
    if not ((GetKeyState(VK_CONTROL) and $8000 = $8000) and FMultiSelect) then
      DateCol.Clear;

    isSelected := true;
    for lidx := 0 to 6 do
    begin
      if DateCol.IsDateInList(ClkDate + lidx) = -1 then
        isSelected := False;
    end;

    if isSelected then
    begin
      for lidx := 0 to 6 do
      begin
        sidx := DateCol.IsDateInList(ClkDate + lidx);
        if sidx <> -1 then
          DateCol.Items[sidx].Free;
      end;
    end
    else
    begin
      for lidx := 0 to 6 do
        if IsVisibleDay(ClkDate + lidx) then
          DateCol.Add.Date := ClkDate + lidx;
    end;

    Invalidate;
    if Assigned(FOnWeekSelect) then
      FOnWeekSelect(Self);
  end;

  //*********************************************************

  if FShowGotoToDay and IsInBounds(x, y, mmgtb) then
  begin
    ClkDate := Now;
    SelDate := Now;
    Date := Now;
    if MultiSelect then
      Invalidate;
      
    if Assigned(FOnDayChange) then
      FOnDayChange(self, origdate, SelDate);

    if Assigned(FOnDateChange) then
      FOnDateChange(self, origdate, SelDate);

    Exit;
  end;


  if IsInBounds(x, y, mmdb) then
  begin
    ClkDate := XYToDate(X, Y, True);

    if not IsVisibleDay(ClkDate) then
      Exit;

    if not CheckDateRange(clkdate) then
      Exit;

    lidx := Datecol.IsDateInList(origdate);

    if (GetKeyState(VK_CONTROL) and $8000 = $8000) and FMultiSelect then
    begin
      lidx := DateCol.IsDateInList(clkdate);
      if lidx = -1 then
      begin
        with DateCol.Add do
          Date := ClkDate;
        SelDate := ClkDate;
      end
      else
      begin
        origdate := DateCol.items[lidx].Date;
        DateCol.items[lidx].Free;
      end;
    end
    else
    begin
      if (lidx <> -1) then
        DateCol.Items[lidx].Free;

      seldate := clkdate;
      thedate := seldate;
      datecol.Clear;
      lidx := datecol.IsDateInList(SelDate);
      if (lidx = -1) then
      begin
        with DateCol.Add do
          Date := seldate;
      end;
    end;

    if Assigned(FXCalendar) then
    begin
      FXCalendar.DecodeDate(origdate, ye, omo, da);
      FXCalendar.DecodeDate(clkdate, ye, nmo, da);
    end
    else
    begin
      DecodeDate(origdate, ye, omo, da);
      DecodeDate(clkdate, ye, nmo, da);
    end;

    if (omo = nmo) then
    begin
      r := DateToRect(origdate);
      {$IFNDEF TMSDOTNET}
      M_InvalidateRect(self.Handle, @r, True);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      M_InvalidateRect(self.Handle, r, True);
      {$ENDIF}
      r := DatetoRect(thedate);
      {$IFNDEF TMSDOTNET}
      M_InvalidateRect(self.Handle, @r, True);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      M_InvalidateRect(self.Handle, r, True);
      {$ENDIF}
    end
    else
      DoPaint;

    SetLabel(nmo, ye);
    DiffCheck(origdate, seldate);

    //if MultiSelect then
      Invalidate;

  end;
end;


procedure TXCalPlannerCalendar.MouseUp(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button <> mbLeft) then
  begin
    inherited;
    Exit;
  end
  else
    if Assigned(OnMouseUp) then
      OnMouseUp(Self,Button, Shift, X, Y);

  mousesel := False;

//  ReleaseCapture;
  inherited;

  {mmm}
  if UseRightToLeftAlignment then
    X := ClientWidth - X;
  {/mmm}

  if (Abs(x - xposin) < 4) and (Abs(y - yposin) < 4) then
  begin
    //dt := XYToDate(x,y,false);
    if Assigned(FOnDaySelect) and IsVisibleDay(clkdate) then
      FOnDaySelect(Self,clkdate);
  end;

{  if (FShowGotoToDay and (y > Fdy * 8 - Fdy div 2)) then
  begin
    ClkDate := Now;
    SelDate := Now;
    Date := Now;
    if MultiSelect then
      Invalidate;

    if Assigned(FOnDaySelect) then
      FOnDaySelect(self, SelDate);
  end;}
end;

{mmm}
{ SetLayout is not declared in the Windows unit. So I declare it here }
function SetLayout(dc: HDC; dwLayout: DWORD): DWORD; stdcall; external 'gdi32.dll' name 'SetLayout';
const
  LAYOUT_RTL = 1;
  LAYOUT_BITMAPORIENTATIONPRESERVED = 8;


procedure TXCalPlannerCalendar.ChangeOrientation(RTL: Boolean);
begin
  if RTL = FRTLOrientation then
    Exit;
    
  FRTLOrientation := RTL;
  if RTL then
    SetLayout(Canvas.Handle, LAYOUT_RTL)
  else
    SetLayout(Canvas.Handle, 0);


//mmm?    Canvas.TextFlags := Canvas.TextFlags or ETO_RTLREADING;
//mmm hook drawtext to set bidiflags
end;

{$IFNDEF TMSDOTNET}
function TXCalPlannerCalendar.M_InvalidateRect(hWnd: HWND; lpRect: PRect; bErase: BOOL): BOOL;
{$IFDEF DELPHI4_LVL}
var
  Hold: Integer;
{$ENDIF}
begin

  {$IFDEF DELPHI4_LVL}
  if Assigned(lpRect) and UseRightToLeftAlignment then
  begin
    Hold := lpRect^.Left;
    lpRect^.Left := ClientWidth - lpRect^.Right;
    lpRect^.Right := ClientWidth - Hold;
  end;
  {$ENDIF}

  Result := InvalidateRect(hWnd, lpRect, bErase);
end;
{$ENDIF}
{$IFDEF TMSDOTNET}
function TXCalPlannerCalendar.M_InvalidateRect(hWnd: HWND; R: TRect; bErase: BOOL): BOOL;
var
  Hold: Integer;
begin
  if UseRightToLeftAlignment then
  begin
    Hold := lpRect^.Left;
    lpRect^.Left := ClientWidth - lpRect^.Right;
    lpRect^.Right := ClientWidth - Hold;
  end;

  Result := InvalidateRect(hWnd, R, bErase);
end;
{$ENDIF}

{/mmm}

procedure TXCalPlannerCalendar.Paint;
var
  r,captionR,gr: TRect;
  xo, yo: integer;
  hrgn: THandle;
  direction: Boolean;
  bmp: TBitmap;
  clr: TColor;
  Theme: THandle;
//  wfh: Integer;
  SaveRTLO: Boolean;

begin
  Caption := '';

  inherited Paint;

  FBorderColor := clBlack;
  FCanvas := Canvas;

  if FUpdateCount > 0 then
    Exit;

  //mmm
  CalcBounds;

  if FUseTheme and FBorderXP then
  begin
    theme := OpenThemeData(Handle,'Edit');
    bmp := TBitmap.Create;
    bmp.Width := 12;
    bmp.Height := 12;
    r := rect(0,0,10,10);
    {$IFNDEF TMSDOTNET}
    DrawThemeBackground(theme,bmp.Canvas.handle,1,1,@r,nil);
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    DrawThemeBackground(theme,bmp.Canvas.handle,1,1,r,nil);
    {$ENDIF}
    clr := bmp.Canvas.Pixels[0,0];
    CloseThemeData(theme);
    bmp.free;
    r := ClientRect;
    FBorderColor := clr;
    FCanvas.Pen.Color := clr;
    FCanvas.Brush.Style := bsClear;
    FCanvas.Rectangle(r.Left,r.Top,r.Right,r.Bottom);
  end;

  Canvas.Brush.Color := Color;
  Canvas.Pen.Color := Color;
  Canvas.Rectangle(mmb.Left, mmb.Top, mmb.Right, mmb.Bottom);

  {$IFDEF USEIMAGE}
  if Assigned(FImage) then
  begin
    if not FImage.Empty then
    begin
      case FBackgroundPosition of
        bpTopLeft: FCanvas.Draw(mmb.Left, mmb.Top, FImage);
        bpTopRight: FCanvas.Draw(Max(mmb.Left, mmb.Right - FImage.Width), mmb.Top, FImage);
        bpBottomLeft: FCanvas.Draw(mmb.Left, Max(mmb.Top, mmb.Bottom - FImage.Height), FImage);
        bpBottomRight: FCanvas.Draw(Max(mmb.Left, mmb.Right - FImage.Width),
            Max(mmb.Top, mmb.Bottom - FImage.Height), FImage);
        bpCenter: FCanvas.Draw(Max(mmb.Left, mmb.Left + (mmb.Right - mmb.Left - FImage.Width) shr 1),
            Max(mmb.Top, mmb.Top + (mmb.Bottom - mmb.Top - FImage.Height) shr 1), FImage);
        bpTiled:
        begin
          hrgn := CreateRectRgn(mmb.Left, mmb.Top, mmb.Right, mmb.Bottom);
          SelectClipRgn(FCanvas.Handle, hrgn);

          yo := mmb.Top;
          while yo < mmb.Bottom do
          begin
            xo := mmb.Left;
            while xo < mmb.Right do
            begin
              FCanvas.Draw(xo, yo, FImage);
              Inc(xo, FImage.Width);
            end;
            Inc(yo, FImage.Height);
          end;

          SelectClipRgn(FCanvas.Handle, 0);
          DeleteObject(hrgn);
        end;
        bpStretched: FCanvas.StretchDraw(mmb, FImage);
      end;
    end
    else
    begin
      if (FMonthGradientStartColor <> clNone) and (FMonthGradientEndColor <> clNone) then
      begin
        direction := (FMonthGradientDirection = gdHorizontal);

        gr := mmb;
        gr.Bottom := mmtb.Bottom;

        DrawGradient(FCanvas, FMonthGradientStartColor, FMonthGradientEndColor, 80, gr, direction);
      end;

      if (FGradientStartColor <> clNone) and (FGradientEndColor <> clNone) then
      begin
        direction := (FGradientDirection = gdHorizontal);

        gr := mmb;
        if (FMonthGradientStartColor <> clNone) and (FMonthGradientEndColor <> clNone) then
          gr.Top := mmtb.Bottom;

        DrawGradient(FCanvas, FGradientStartColor, FGradientEndColor, 80, gr, direction);
      end;
    end;
  end;
  {$ENDIF}

  {mmm}
  if UseRightToLeftAlignment then
  begin
    SaveRTLO := FRTLOrientation;
    ChangeOrientation(True);
  end;
  {/mmm}

  if CaptionColor <> clNone then
  begin
    captionR := mmb;
    captionR.Bottom := mmcb.Bottom;

    FCanvas.Brush.Color := CaptionColor;
    if FCaption3D then
      FCanvas.Pen.Color := clGray
    else
      FCanvas.Pen.Color := CaptionColor;
    FCanvas.Rectangle(captionR);
    if FCaption3D then
    begin
      FCanvas.Pen.Color := clWhite;
      FCanvas.MoveTo(captionR.Left, captionR.Bottom);
      FCanvas.LineTo(captionR.Left, captionR.Top);
      FCanvas.LineTo(captionR.Right, captionR.Top);
    end;
  end;

  PaintProc;

  if ShowGotoToday then
    PaintToday;

  {mmm}
  if UseRightToLeftAlignment then
  begin
    ChangeOrientation(SaveRTLO);
  end;
  {/mmm}
end;

procedure TXCalPlannerCalendar.KeyPress(var Key: char);
begin
  if (key = #27) then seldate := initdate;
  inherited;
end;

procedure TXCalPlannerCalendar.CMMouseLeave(var Message: TMessage);
var
  r: trect;
begin
  inherited;

  if FHoverDate <> 0 then
  begin
    RepaintDate(FHoverDate);
    FHoverDate := 0;
  end;

  if flgl or flgr or flglma or flglya or dflgl or dflgr or flgt then
  begin
    flgl := False;
    flgr := False;
    flglma := False;
    flglya := False;
    dflgl := False;
    dflgr := False;
    flgt := False;
    r := GetClientRect;
    r.bottom := (r.bottom - r.top) div 7;
    {$IFNDEF TMSDOTNET}
    M_InvalidateRect(self.handle, @r, True);
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    M_InvalidateRect(self.handle, r, True);
    {$ENDIF}

    if ShowGotoToday then
    begin
      r := GetClientRect;
//mmm      r.top := r.bottom - dy;
      {$IFNDEF TMSDOTNET}
      M_InvalidateRect(self.handle, @r, True);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      M_InvalidateRect(self.handle, r, True);
      {$ENDIF}
    end;
  end;
end;

procedure TXCalPlannerCalendar.CMWantSpecialKey(var Msg: TCMWantSpecialKey);
begin
  inherited;
  if Msg.CharCode in [VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT] then
    Msg.Result := 1;
end;

procedure TXCalPlannerCalendar.WMEraseBkGnd(var Message: TWMEraseBkGnd);
begin
  Message.Result := 1;
end;

procedure TXCalPlannerCalendar.WMKeyDown(var Msg: TWMKeydown);
var
  da, nmo, omo, ye: word;
  origdate: tdatetime;
  dt: tdatetime;
//mmm  pt: tpoint;
  r: trect;
  lidx: integer;


begin
  inherited;

  if not Enable then
    Exit;

  origdate := SelDate;
//mmm  pt := DateToXY(seldate);

  //xxx
  if Assigned(FXCalendar) then
    FXCalendar.DecodeDate(thedate, ye, omo, da)
  else
    DecodeDate(thedate, ye, omo, da);
  case msg.charcode of
    {mmm
    vk_left: dt := thedate - 1;
    vk_right: dt := thedate + 1;}
    VK_LEFT:
      if UseRightToLeftAlignment then
        dt := thedate + 1
      else
        dt := thedate - 1;
    VK_RIGHT:
      if UseRightToLeftAlignment then
        dt := thedate - 1
      else
        dt := thedate + 1;
    {/mmm}
    vk_up: dt := thedate - 7;
    vk_down: dt := thedate + 7;
    else
      dt := thedate;
  end;

  if (GetMonth(dt) > GetMonth(SelDate)) and not FShowDaysAfter then
  begin
    if Assigned(FOnCancelledKey) then
      FOnCancelledKey(Self, msg.CharCode);
    if Assigned(FOnCancelledChange) then
      FOnCancelledChange(Self, dt);
    Exit;
  end;

  if (GetMonth(dt) < GetMonth(SelDate)) and not FShowDaysBefore then
  begin
    if Assigned(FOnCancelledKey) then
      FOnCancelledKey(Self, msg.CharCode);
    if Assigned(FOnCancelledChange) then
      FOnCancelledChange(Self, dt);
    Exit;
  end;

  if CheckDateRange(dt) then
    thedate := dt
  else
    Exit;

  if (Msg.Charcode = VK_SPACE)  or
     ((Msg.Charcode = VK_RETURN) and (FReturnIsSelect)) then
  begin
    lidx := datecol.IsDateInList(thedate);
    if (lidx = -1) then
    begin
      if (not FMultiSelect) or ((GetKeyState(VK_CONTROL) and $8000 = 0) and MultiSelectCtrlKey) then datecol.Clear;
      with DateCol.Add do
        Date := thedate;
    end
    else
      datecol.Items[lidx].Free;

    Invalidate;
    SelDate := thedate;

    if Assigned(OnDaySelect) then
      OnDaySelect(self, theDate);
  end;

  if msg.charcode in [vk_up, vk_down, vk_left, vk_right] then
  begin
    Seldate := thedate;
    //xxx
    if Assigned(FXCalendar) then
      FXCalendar.Decodedate(thedate, ye, nmo, da)
    else
      Decodedate(thedate, ye, nmo, da);
    SetLabel(nmo, ye);

    if (GetKeyState(VK_SHIFT) and $8000 = $8000) and (FMultiSelect) then
    begin
      if movdate = -1 then
      begin
        clkdate := origdate;
        DateCol.AddRange(clkdate, seldate);
        MovDate := SelDate;
      end
      else
      begin
        datecol.StartUpdate;
        datecol.DelRange(clkdate, origdate);
        datecol.AddRange(clkdate, seldate);
        datecol.StopUpdate;
      end;
    end
    else
    begin
      movdate := -1;
    end;

    if omo = nmo then
    begin
      r := DateToRect(origdate);

      {$IFNDEF TMSDOTNET}
      M_InvalidateRect(self.handle, @r, True);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      M_InvalidateRect(self.handle, r, True);
      {$ENDIF}

      r := DateToRect(thedate);

      {$IFNDEF TMSDOTNET}
      M_InvalidateRect(self.handle, @r, True);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      M_InvalidateRect(self.handle, r, True);
      {$ENDIF}
    end
    else
      Dopaint;
  end;

  if msg.charcode = VK_PRIOR then
  begin
    Self.Changemonth(-1);
  end;
  if msg.charcode = VK_NEXT then
  begin
    Self.Changemonth(+1);
  end;

  if msg.charcode in [vk_right, vk_up, vk_down, vk_left, vk_prior, vk_next] then
  begin
    if Assigned(FOnDateChange) then
      FOnDateChange(self, origdate, seldate);
  end;

  DiffCheck(origdate, seldate);

  if Msg.CharCode in [vk_up, vk_left, vk_right, vk_down, vk_next, vk_prior] then
    Msg.Result := 0;
end;

procedure TXCalPlannerCalendar.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  inherited;
  MouseSel := false;
end;

procedure TXCalPlannerCalendar.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TXCalPlannerCalendar.EndUpdate;
begin
  if FUpdateCount > 0 then
  begin
    Dec(FUpdateCount);
    if FUpdateCount = 0 then
      Invalidate;
  end;
end;

procedure TXCalPlannerCalendar.ResetUpdate;
begin
  FUpdateCount := 0;
end;

procedure TXCalPlannerCalendar.DrawGradient(Canvas: TCanvas; FromColor, ToColor: TColor; Steps: Integer; r:TRect; Direction: Boolean);
var
  diffr,startr,endr: Integer;
  diffg,startg,endg: Integer;
  diffb,startb,endb: Integer;
  iend: Integer;
  rstepr,rstepg,rstepb,rstepw: Real;
  i,stepw: Word;

begin
  if Steps = 0 then
    Steps := 1;

  FromColor := ColorToRGB(FromColor);
  ToColor := ColorToRGB(ToColor);

  startr := (FromColor and $0000FF);
  startg := (FromColor and $00FF00) shr 8;
  startb := (FromColor and $FF0000) shr 16;
  endr := (ToColor and $0000FF);
  endg := (ToColor and $00FF00) shr 8;
  endb := (ToColor and $FF0000) shr 16;

  diffr := endr - startr;
  diffg := endg - startg;
  diffb := endb - startb;

  rstepr := diffr / steps;
  rstepg := diffg / steps;
  rstepb := diffb / steps;

  if Direction then
    rstepw := (R.Right - R.Left) / Steps
  else
    rstepw := (R.Bottom - R.Top) / Steps;

  with Canvas do
  begin
    for i := 0 to Steps - 1 do
    begin
      endr := startr + Round(rstepr*i);
      endg := startg + Round(rstepg*i);
      endb := startb + Round(rstepb*i);
      stepw := Round(i*rstepw);
      Pen.Color := endr + (endg shl 8) + (endb shl 16);
      Brush.Color := Pen.Color;
      if Direction then
      begin
        iend := R.Left + stepw + Trunc(rstepw) + 1;
        if iend > R.Right then
          iend := R.Right;
        Rectangle(R.Left + stepw,R.Top,iend,R.Bottom)
      end
      else
      begin
        iend := R.Top + stepw + Trunc(rstepw)+1;
        if iend > r.Bottom then
          iend := r.Bottom;
        Rectangle(R.Left, R.Top+stepw,R.Right,iend);
      end;
    end;
  end;
end;

function TXCalPlannerCalendar.GetDateProc: TDatetime;
begin
  Result := SelDate;
end;

procedure TXCalPlannerCalendar.SetDateProc(const Value: TDatetime);
begin
  //xxx
  if Assigned(FXCalendar) then
    FXCalendar.DecodeDate(Value, FYear, FMonth, FDay)
  else
    DecodeDate(Value, FYear, FMonth, FDay);
  SetDate(FDay, FMonth, FYear);
end;

procedure TXCalPlannerCalendar.SetDateCol(const Value: TSelDateItems);
begin
  DateCol.Assign(Value);
  DateCol.DoPaint;
end;

function TXCalPlannerCalendar.GetDateCol: TSelDateItems;
var
  d: tdatetime;
  i: integer;
  sorted: Boolean;
begin
  //sort the list
  repeat
    sorted := True;
    for i := 2 to datecol.Count do
    begin
      if (datecol.items[i - 2].Date > datecol.items[i - 1].Date) then
      begin
        d := datecol.items[i - 2].date;
        datecol.items[i - 2].date := datecol.items[i - 1].date;
        datecol.items[i - 1].date := d;
        sorted := False;
      end;
    end;
  until sorted;

  Result := Datecol;
end;

procedure TXCalPlannerCalendar.DoPaint;
begin
  M_InvalidateRect(Handle, nil, False);
end;

procedure TXCalPlannerCalendar.DoMonthPopup;
var
  popmenu: THandle;
//  buf: array[0..128] of char;
  pt: TPoint;
  ye, mo, da: word;
//  flg: integer;
  i: Integer;
  MnuInfo: TMenuItemInfo;
  s: string;
  dddd: TDateTime;
begin
  pt := ClientToScreen(point(0, 0));
  popmenu := CreatePopupMenu;

  //xxx
  if Assigned(FXCalendar) then
    FXCalendar.DecodeDate(seldate, ye, mo, da)
  else
    DecodeDate(seldate, ye, mo, da);

  for i := 1 to 12 do
  begin
  {$IFNDEF TMSDOTNET}
    MnuInfo.fMask := MIIM_ID or MIIM_STATE or MIIM_TYPE;
    MnuInfo.wID := i;

    //xxx
    if Assigned(FXCalendar) then
      dddd := FXCalendar.StartOfAMonth(ye, i)
    else
      dddd := EncodeDate(ye, i, 1);
    if not CheckMonth(dddd) then
      MnuInfo.fState := MFS_GRAYED
    else
      MnuInfo.fState := 0;

    {$IFDEF DELPHI4_LVL}
    if UseRightToLeftAlignment then
      MnuInfo.fType := MFT_RIGHTORDER
    else
    {$ENDIF}
      MnuInfo.fType := 0;

    //xxx
    if Assigned(FXCalendar) then
      s := FXCalendar.FormatSettings.LongMonthNames[i - 1]
    else
      s := LongMonthNames[i - 1];
    MnuInfo.cch := Length(s);
    MnuInfo.dwTypeData := PChar(s);
    MnuInfo.cbSize := SizeOf(MnuInfo);
    InsertMenuItem(popmenu, $FFFFFFFF, True, MnuInfo);
  {$ENDIF}
  {$IFDEF TMSDOTNET}
    //xxx
    if Assigned(FXCalendar) then
      dddd := FXCalendar.StartOfAMonth(ye, i)
    else
      dddd := StartOfAMonth(ye, i);
    if not CheckMonth(dddd) then flg := MF_GRAYED else flg := 0;
    InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, i,
      fnameofmonths.january);
  {$ENDIF}
  end;


  {$IFDEF DELPHI4_LVL}
  if UseRightToLeftAlignment then
    TrackPopupMenu(popmenu, TPM_RIGHTALIGN or TPM_LEFTBUTTON, pt.x + ClientWidth - mmlmb.Left,
      pt.y + mmlmb.Bottom, 0, self.handle, nil)
  else
  {$ENDIF}
    TrackPopupMenu(popmenu, TPM_LEFTALIGN or TPM_LEFTBUTTON, pt.x + mmlmb.Left,
      pt.y + mmlmb.Bottom, 0, self.handle, nil);

  DestroyMenu(popmenu);
end;

procedure TXCalPlannerCalendar.DoYearPopup;
var
  popmenu: THandle;
  pt: TPoint;
  i: integer;
  ye, mo, da: word;
//  flg: integer;
  MnuInfo: TMenuItemInfo;
  s: string;
  dddd: TDateTime;
begin
  pt := ClientToScreen(point(0, 0));
  popmenu := CreatePopupMenu;
  
  //xxx
  if Assigned(FXCalendar) then
    FXCalendar.Decodedate(thedate, ye, mo, da)
  else
    Decodedate(thedate, ye, mo, da);
  //xxx
  {if (mo = 2) and (da = 29) then da := 28;}

  for i := 1 to 10 do
  begin
    {$IFNDEF TMSDOTNET}
    MnuInfo.fMask := MIIM_ID or MIIM_STATE or MIIM_TYPE;
    MnuInfo.wID := i + 15;

    //xxx
    if Assigned(FXCalendar) then
      dddd := FXCalendar.StartOfAMonth(ye + i - 5, mo)
    else
      dddd := EncodeDate(ye + i - 5, mo, 1);
    if not CheckDateRange(dddd) then
      MnuInfo.fState := MFS_GRAYED
    else
      MnuInfo.fState := 0;

    {$IFDEF DELPHI4_LVL}
    if UseRightToLeftAlignment then
      MnuInfo.fType := MFT_RIGHTORDER
    else
    {$ENDIF}
      MnuInfo.fType := 0;

    s := IntToStr(ye + i - 5);
    MnuInfo.cch := Length(s);
    MnuInfo.dwTypeData := PChar(s);
    MnuInfo.cbSize := SizeOf(MnuInfo);
    InsertMenuItem(popmenu, $FFFFFFFF, True, MnuInfo);
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    //xxx
    if Assigned(FXCalendar) then
      dddd := FXCalendar.StartOfAMonth(ye + i - 5, mo)
    else
      dddd := StartOfAMonth(ye + i - 5, mo);
    if not CheckDateRange(dddd) then flg := MF_GRAYED else flg := 0;
    InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, i + 15,
      IntToStr(ye + i - 5));
    {$ENDIF}
  end;

  {$IFDEF DELPHI4_LVL}
  if UseRightToLeftAlignment then
    TrackPopupMenu(popmenu, TPM_RIGHTALIGN or TPM_LEFTBUTTON, pt.x + ClientWidth - mmlyb.Left,
      pt.y + mmlyb.Bottom, 0, self.handle, nil)
  else
  {$ENDIF}
    TrackPopupMenu(popmenu, TPM_LEFTALIGN or TPM_LEFTBUTTON, pt.x + mmlyb.Left,
      pt.y + mmlyb.Bottom, 0, self.handle, nil);

  DestroyMenu(popmenu);
end;

//xxx
procedure TXCalPlannerCalendar.WMCommand(var Message: TWMCommand);
var
  ye, mo, da: word;
  origdate: TDateTime;
begin
  if (message.itemid <= 12) and (message.itemid >= 1) then
  begin
    origdate := seldate;
    if Assigned(FXCalendar) then
      FXCalendar.DecodeDate(thedate, ye, mo, da)
    else
      DecodeDate(thedate, ye, mo, da);
    mo := Message.ItemId;
    if Assigned(FXCalendar) then
      thedate := FXCalendar.StartOfAMonth(ye, mo)
    else
      thedate := EncodeDate(ye, mo, 1);
    SelDate := thedate;
    SetLabel(mo, ye);
    DoPaint;

    //xxx
    if Assigned(FXCalEvents) then
      GetXCalEvents;

    DoChangeMonth(origdate, seldate);
  end;

  if (message.itemid >= 15) and (message.itemid <= 25) then
  begin
    Origdate := SelDate;
    if Assigned(FXCalendar) then
      FXCalendar.DecodeDate(thedate, ye, mo, da)
    else
      DecodeDate(thedate, ye, mo, da);
    ye := ye + Message.itemid - 20;
    {if (mo = 2) and (da = 29) then da := 28;}
    if Assigned(FXCalendar) then
      thedate := FXCalendar.StartOfAMonth(ye, mo)
    else
      thedate := EncodeDate(ye, mo, 1);
    seldate := thedate;
    SetLabel(mo, ye);
    DoPaint;

    //xxx
    if Assigned(FXCalEvents) then
      GetXCalEvents;
      
    DoChangeYear(origdate, seldate);
  end;

  inherited;
end;


{ TSelDateItems }

function TSelDateItems.Add: TSelDateItem;
begin
  Result := TSelDateItem(inherited Add);
  Result.Color := FOwner.EventMarkerColor;
  Result.Shape := FOwner.EventMarkerShape;
  Result.FontColor := FOwner.EventDayColor;
end;

constructor TSelDateItems.Create(AOwner: TXCalCustomCalendarPanel);
begin
  inherited Create(TSelDateItem);
  FOwner := AOwner;
  FVisible := True;
end;

function TSelDateItems.GetItem(Index: integer): TSelDateItem;
begin
  Result := TSelDateItem(inherited GetItem(Index));
end;

function TSelDateItems.Insert(Index: integer): TSelDateItem;
begin
  {$IFDEF DELPHI4_LVL}
  Result := TSelDateItem(inherited Insert(Index));
  {$ELSE}
  Result := TSelDateItem(inherited Add);
  {$ENDIF}
end;

function TSelDateItems.IsInList(da, mo, ye: integer): integer;
var
  i: integer;
  dt: TDateTime;
begin
  Result := -1;
  dt := EncodeDate(ye, mo, da);
  for i := 1 to Count do
  begin
    if dt = Items[i - 1].Date then
    begin
      Result := i - 1;
      Break;
    end;
  end;
end;

function TSelDateItems.IsDateInList(dt: TDateTime): integer;
var
  i: integer;
begin
  Result := -1;
  for i := 1 to Count do
  begin
    if Trunc(dt) = Trunc(Items[i - 1].Date) then
    begin
      Result := i - 1;
      Break;
    end;
  end;
end;

procedure TSelDateItems.SetItem(Index: integer; Value: TSelDateItem);
begin
  inherited SetItem(Index, Value);
end;

procedure TSelDateItems.AddRange(dt1, dt2: TDateTime);
var
  swp: TDateTime;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;
  while dt1 <= dt2 do
  begin
    if IsDateInList(dt1) = -1 then
      with Add do Date := dt1;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.AddRangeSC(dt1, dt2: TDateTime; Shp: TEventShape; Clr: TColor); // New method
var
  swp: TDateTime;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;
  while dt1 <= dt2 do
  begin
    if IsDateInList(dt1) = -1 then
      with Add do begin
        Date := dt1;
        Shape := Shp;	 // Added!
        Color := Clr;  // Added!
       end;
    dt1 := dt1 + 1;
  end;
end;


procedure TSelDateItems.DelRange(dt1, dt2: TDateTime);
var
  swp: TDateTime;
  lidx: integer;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;

  while dt1 <= dt2 do
  begin
    lidx := IsDateInList(dt1);
    if lidx <> -1 then
      items[lidx].Free;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.StartUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TSelDateItems.DoPaint;
begin
  if FUpdateCount = 0 then
    FOwner.Dopaint;
end;

procedure TSelDateItems.StopUpdate;
begin
  if FUpdateCount > 0 then
  begin
    Dec(FUpdateCount);
    if FUpdateCount = 0 then
      FOwner.Dopaint;
  end;
end;

function TSelDateItems.GetDate(dt: TDateTime): TSelDateItem;
var
  i: integer;
begin
  Result := nil;
  for i := 1 to Count do
  begin
    if Trunc(dt) = Trunc(Items[i - 1].Date) then
    begin
      Result := Items[i - 1];
      Break;
    end;
  end;
end;

procedure TSelDateItems.AddRangeHint(dt1, dt2: TDateTime; Hint: string);
var
  swp: TDateTime;
  SelItem: TSelDateItem;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;

  while dt1 <= dt2 do
  begin
    SelItem := Dates[dt1];
    if Assigned(SelItem) then
    begin
      if SelItem.Hint <> '' then
        SelItem.Hint := SelItem.Hint + #13 + Hint
      else
        SelItem.Hint := Hint;
    end
    else
    begin
      SelItem := Add;
      SelItem.Date := dt1;
      SelItem.Hint := Hint;
    end;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.AddRangeHintSC(dt1, dt2: TDateTime; Hint: string; Shp: TEventShape; Clr: TColor); // New method
var
  swp: TDateTime;
  SelItem: TSelDateItem;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;

  while dt1 <= dt2 do
  begin
    SelItem := Dates[dt1];
    if Assigned(SelItem) then
    begin
      if SelItem.Hint <> '' then
        SelItem.Hint := SelItem.Hint + #13 + Hint
      else
        SelItem.Hint := Hint;
      SelItem.Shape := Shp;
      SelItem.Color := Clr;
    end
    else
    begin
      SelItem := Add;
      SelItem.Date := dt1;
      SelItem.Hint := Hint;
      SelItem.Shape := Shp;
      SelItem.Color := Clr;
    end;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.Update(Item: TCollectionItem);
begin
  inherited;
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TSelDateItems.RepaintDate(ADate: TDateTime);
begin
  if not FVisible then Exit;

  if FOwner.HandleAllocated then
    FOwner.RepaintDate(ADate);
end;

procedure TSelDateItems.ResetUpdate;
begin
  if FUpdateCount > 0 then
    dec(FUpdateCount);
end;

{ TSelDateItem }

procedure TSelDateItem.Assign(Source: TPersistent);
begin
  FColor := TSelDateItem(Source).Color;
  FDate := TSelDateItem(Source).Date;
  FHint := TSelDateItem(Source).Hint;
  Shape := TSelDateItem(Source).Shape;
  FFontColor := TSelDateItem(Source).FontColor;
  FObject := TSelDateItem(Source).ItemObject;
  FTag := TSelDateItem(Source).Tag;
end;

procedure TSelDateItem.Changed;
begin
  {$IFDEF DELPHI4_LVL}
  if (Collection as TSelDateItems).UpdateCount = 0 then
  {$ENDIF}
    (Collection as TSelDateItems).RepaintDate(FDate);
end;

destructor TSelDateItem.Destroy;
begin
  Changed;
  inherited;
end;

procedure TSelDateItem.SetColor(const Value: TColor);
begin
  FColor := Value;
  Changed;
end;

procedure TSelDateItem.SetDate(const Value: TDateTime);
begin
  if Value <> FDate then
  begin
    FDate := Value;
    Changed;
  end;
end;

procedure TSelDateItem.SetEventShape(const Value: TEventShape);
begin
  FEventShape := Value;
  Changed;
end;

procedure TSelDateItem.SetFontColor(const Value: TColor);
begin
  FFontColor := Value;
  Changed;
end;

procedure TSelDateItem.SetHint(const Value: string);
begin
  FHint := Value;
  Changed;
end;

{ TMinMaxDate }

constructor TMinMaxDate.Create(AOwner: TXCalPlannerCalendar);
begin
  inherited Create;
  FOwner := AOwner;
end;

function TMinMaxDate.GetDate: TDateTime;
begin
  //xxx
  if Assigned(FOwner.FXCalendar) then
    Result := FOwner.FXCalendar.EncodeDate(Year,Month,Day)
  else
    Result := EncodeDate(Year,Month,Day);
end;

procedure TMinMaxDate.SetDate(const Value: TDateTime);
var
  Da,Mo,Ye: word;
begin
  //DecodeDate(Value,word(FYear),word(FMonth),word(FDay));
  //xxx
  if Assigned(FOwner.FXCalendar) then
    FOwner.FXCalendar.DecodeDate(Value, Ye, Mo, Da)
  else
    DecodeDate(Value, Ye, Mo, Da);
  FYear := Ye;
  FMonth := Mo;
  FDay := Da;
end;

procedure TMinMaxDate.SetDay(avalue: smallint);
begin
  FDay := AValue;
  FOwner.Invalidate;
end;

procedure TMinMaxDate.SetMonth(avalue: smallint);
begin
  FMonth := AValue;
  FOwner.Invalidate;
end;

procedure TMinMaxDate.SetUse(avalue: Boolean);
begin
  Fuse := AValue;
  FOwner.Invalidate;
end;

procedure TMinMaxDate.SetYear(avalue: smallint);
begin
  FYear := AValue;
  FOwner.Invalidate;
end;

{$IFDEF USEIMAGE}
procedure TXCalPlannerCalendar.SetBackgroundPosition(const Value: TBackgroundPosition);
begin
  FBackgroundPosition := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetImage(const Value: TAdvImage);
begin
  FImage.Assign(Value);
  Invalidate;
end;
{$ENDIF}

procedure TXCalPlannerCalendar.BackgroundChanged(Sender: TObject);
begin
  Invalidate;
  Changed;
end;

function TXCalPlannerCalendar.HasEvent(dt: TDateTime; var EventItem: TSelDateItem): Boolean;
var
  IsEvent: Boolean;
  l: integer;
  evI : TEventProp;
begin
  EventItem := nil;

  IsEvent := False;
  EventHint := '';

  if EventCol.Visible then
  begin
    if Assigned(FOnGetDateEvent) then
      FOnGetDateEvent(Self, dt, IsEvent);

    if FEventHints and IsEvent then
    begin
      if Assigned(FOnGetDateEventHint) then
        FOnGetDateEventHint(Self, dt, IsEvent, EventHint);
    end;

    l := EventCol.IsDateInList(dt);
    if l <> -1 then
    begin
      IsEvent := True;
      EventItem := EventCol.Items[l]
    end;

    if IsEvent then
    begin
      EventCol.BeginUpdate;
      if Assigned(FOnGetEventProp) then
      begin
        evI := TEventProp(EventItem);
        //FOnGetEventProp(self,dt,TEventProp(EventItem));
        FOnGetEventProp(self,dt,evI);
      end;
      EventCol.ResetUpdate;
    end;
  end;

  Result := IsEvent;
end;

function TXCalPlannerCalendar.GetEvents: TSelDateItems;
begin
  Result := EventCol;
end;

procedure TXCalPlannerCalendar.SetEvents(const Value: TSelDateItems);
begin
  EventCol.Assign(Value);
end;

procedure TXCalPlannerCalendar.WndProc(var Msg: TMessage);
begin
  if (Msg.Msg = WM_THEMECHANGED) and AutoThemeAdapt then
  begin
    ThemeAdapt;
  end;

  if (Msg.Msg = CM_SYSFONTCHANGED) and AutoThemeAdapt then
  begin
    ThemeAdapt;
  end;

  inherited;
end;

procedure TXCalPlannerCalendar.SetComponentStyle(AStyle: TTMSStyle);
begin
  case AStyle of
    tsOffice2003Blue: Style := psOffice2003Blue;
    tsOffice2003Olive: Style := psOffice2003Olive;
    tsOffice2003Silver: Style := psOffice2003Silver;
    tsOffice2003Classic: Style := psOffice2003Classic;
    tsOffice2007Luna: Style := psOffice2007Luna;
    tsOffice2007Obsidian: Style := psOffice2007Obsidian;
    tsOffice2007Silver: Style := psOffice2007Silver;    
    tsWindowsXP: Style := psWindowsXP;
    tsWhidbey: Style := psWhidbey;
  end;

end;


procedure TXCalPlannerCalendar.SetStyle(const Value: TPlannerCalendarStyle);
begin
  FStyle := Value;

  case FStyle of
  psWindowsXP:
    begin
      GradientStartColor := clWhite;
      GradientEndColor := clBtnFace;
      MonthGradientStartColor := clNone;
      MonthGradientEndColor := clNone;
      InActiveColor := clTeal;
      DateSelectColor := clHighLight;
      DateHoverColor := clInfoBk;
      DateDownColor := clHighLight;
      SelectFontColor := clWhite;
      Line3D := true;
    end;
  psOffice2000:
    begin
      GradientStartColor := clBtnFace;
      GradientEndColor := clNone;
      MonthGradientStartColor := clNone;
      MonthGradientEndColor := clNone;
      InActiveColor := clTeal;
      DateSelectColor := clHighLight;
      DateHoverColor := clInfoBk;
      DateDownColor := clHighLight;
      SelectFontColor := clBlack;
      Line3D := true;
    end;
  psOffice2003Blue:
    begin
      GradientStartColor := $FCE1CB;
      GradientEndColor := $E0A57D;
      MonthGradientStartColor := $FCE1CB;
      MonthGradientEndColor := $E0A57D;
      InactiveColor := clWhite;
      DateSelectColor:= RGB(255, 191, 113);
      DateHoverColor := $C2EEFF;
      DateDownColor := $087FE8;
      SelectFontColor := clWhite;
      Line3D := false;
    end;
  psOffice2003Olive:
    begin
      GradientStartColor := $CFF0EA;
      GradientEndColor := $8CC0B1;
      MonthGradientStartColor := $CFF0EA;
      MonthGradientEndColor := $8CC0B1;
      InactiveColor := clWhite;
      DateSelectColor:= RGB(255, 191, 113);
      DateHoverColor := $C2EEFF;
      DateDownColor := $087FE8;
      SelectFontColor := clWhite;
      Line3D := false;
    end;
  psOffice2003Silver:
    begin
      GradientStartColor := $ECE2E1;
      GradientEndColor := $B39698;
      MonthGradientStartColor := $ECE2E1;
      MonthGradientEndColor := $B39698;
      InactiveColor := clWhite;
      DateSelectColor:= RGB(255, 191, 113);
      DateHoverColor := $C2EEFF;
      DateDownColor := $087FE8;
      SelectFontColor := clWhite;
      Line3D := false;
    end;
  psOffice2003Classic:
    begin
      GradientStartColor := clWhite;
      GradientEndColor := $C9D1D5;
      MonthGradientStartColor := clWhite;
      MonthGradientEndColor := $C9D1D5;
      InactiveColor := clWhite;
      DateSelectColor:= $808080;
      DateHoverColor := $D2BDB6;
      DateDownColor := $B59285;
      SelectFontColor := clWhite;
      Line3D := false;
    end;
  psOffice2007Luna:
    begin
      GradientStartColor := $FFF4E3;
      GradientEndColor := $EDD9C8;
      GradientDirection := gdVertical;
      MonthGradientStartColor := $FFEFE3;
      MonthGradientEndColor := $FFD2AF;
      MonthGradientDirection := gdVertical;
      InactiveColor := clWhite;
      DateSelectColor:= $BBEEFF;
      DateHoverColor := $78DAFF;
      DateDownColor := $087FE8;
      SelectFontColor := $723708;
      Line3D := false;
    end;
  psOffice2007Obsidian:
    begin
      GradientStartColor := $F1F0E6;
      GradientEndColor := $C6BCB5;
      GradientDirection := gdVertical;
      MonthGradientStartColor := $F2F1F0;
      MonthGradientEndColor := $C9C2BD;
      MonthGradientDirection := gdVertical;
      InactiveColor := clWhite;
      DateSelectColor:= $BBEEFF;
      DateHoverColor := $78DAFF;
      DateDownColor := $087FE8;
      SelectFontColor := $433C37;
      Line3D := false;
    end;
  psOffice2007Silver:
    begin
      GradientStartColor := $E7DCD5;
      GradientEndColor := $FBFAF0;
      GradientDirection := gdVertical;
      MonthGradientStartColor := $F8F7F6;
      MonthGradientEndColor := $E8E0DB;
      MonthGradientDirection := gdVertical;
      InactiveColor := clWhite;
      DateSelectColor:= $BBEEFF;
      DateHoverColor := $78DAFF;
      DateDownColor := $087FE8;
      SelectFontColor := $723708;
      Line3D := false;
    end;
  psWhidbey:
    begin
      GradientStartColor := $F5F9FA;
      GradientEndColor := $A8C0C0;

      MonthGradientStartColor := $F5F9FA;
      MonthGradientEndColor := $A8C0C0;
      InactiveColor := clGray;
      DateSelectColor:= RGB(255, 191, 113);
      DateHoverColor := $C2EEFF;
      DateDownColor := $087FE8;
      SelectFontColor := clWhite;
      Line3D := false;
    end;
  psFlat:
    begin
      Color := clBtnFace;
      GradientStartColor := clBtnFace;
      GradientEndColor := clNone;
      MonthGradientStartColor := clBtnFace;
      MonthGradientEndColor := clNone;
      InactiveColor := clWhite;
      DateSelectColor:= clInfoBk;
      DateHoverColor := clNone;
      DateDownColor := clNone;
      SelectFontColor := clBlack;
      Line3D := false;
    end;
  psAvantGarde:
    begin
      GradientStartColor := $00FFD9B3;
      GradientEndColor := clNone;
      Color := $00FFD9B3;
      MonthGradientStartColor := $006580DA;
      MonthGradientEndColor := $00F807F1;
      InactiveColor := clWhite;
      DateSelectColor:= clHighLight;
      DateHoverColor := clNone;
      DateDownColor := clNone;

      SelectFontColor := clWhite;
      Line3D := true;
    end;
  end;

end;

procedure TXCalPlannerCalendar.ThemeAdapt;
var
  eTheme: XPColorScheme;
begin
  eTheme := CurrentXPTheme();

  case eTheme of
    xpBlue: Style := psOffice2003Blue;
    xpGreen: Style := psOffice2003Olive;
    xpGray: Style := psOffice2003Silver;
    xpNoTheme: Style := psWindowsXP;
  else
    Style := psOffice2000;
  end;
end;

procedure TXCalPlannerCalendar.SetAutoThemeAdapt(const Value: Boolean);
begin
  FAutoThemeAdapt := Value;

  if Value and not (csDesigning in ComponentState) then
    ThemeAdapt;
end;

{$IFNDEF TMSDOTNET}
procedure TXCalPlannerCalendar.CMHintShow(var Msg: TMessage);
{$IFNDEF DELPHI3_LVL}
type
  PHintInfo = ^THintInfo;
  {$ENDIF}
{$ENDIF}
{$IFDEF TMSDOTNET}
procedure TXCalPlannerCalendar.CMHintShow(var Message: TCMHintShow);
{$ENDIF}
var
  {$IFNDEF TMSDOTNET}
  hi: PHintInfo;
  {$ENDIF}
  {$IFDEF TMSDOTNET}
  hi: THintInfo;
  {$ENDIF}
  CanShow: Boolean;
begin
  if FEventHints or (BrowserHint <> '') then
  begin
    {$IFNDEF TMSDOTNET}
    hi := PHintInfo(Msg.LParam);
    {$ENDIF}
    {$IFDEF TMSDOTNET}
    hi := Message.HintInfo;
    {$ENDIF}

    Canshow := (EventHint <> '') and not ((FLastHintPos.x = -1) or (FLastHintPos.y = -1));
    ShowHintbusy := Canshow;
    {$IFNDEF TMSDOTNET}
    if CanShow then
    begin
      Hi^.Hintpos.X := (FLastHintPos.x + 1) * Fdx;
      Hi^.Hintpos.y := FLastHintPos.y * Fdy + mmdb.Top;
      Hi^.HintStr := EventHint;
    end;

    if (BrowserHint <> '') then
    begin
      Hi^.Hintpos.X := FLastHintPos.x;
      Hi^.Hintpos.y := FLastHintPos.y;
      Hi^.HintStr := BrowserHint;
    end;

    {$IFDEF DELPHI4_LVL}
    if UseRightToLeftAlignment then Hi^.HintPos.X := ClientWidth - Hi^.HintPos.X;
    {$ENDIF}
    Hi^.Hintpos := ClientToScreen(Hi^.HintPos);

    {$ENDIF}
    {$IFDEF TMSDOTNET}
    if CanShow then
    begin
      Hi.HintPos.X := (FLastHintPos.x + 1) * dx;
      Hi.Hintpos.y := FLastHintPos.y * dy + yoffset;
      Hi.HintStr := EventHint;
    end;

    if (BrowserHint <> '') then
    begin
      Hi.Hintpos.X := FLastHintPos.x;
      Hi.Hintpos.y := FLastHintPos.y;
      Hi.HintStr := BrowserHint;
    end;

    {$IFDEF DELPHI4_LVL}
    if UseRightToLeftAlignment then Hi.HintPos.X := ClientWidth - Hi.HintPos.X;
    {$ENDIF}
    Hi.Hintpos := ClientToScreen(Hi.HintPos);

    {$ENDIF}
  end;
end;

procedure TXCalPlannerCalendar.PropsChanged(Sender: TObject);
begin
  SetLabel(Month, Year);
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetShowDaysAfter(const Value: Boolean);
begin
  FShowDaysAfter := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetShowDaysBefore(const Value: Boolean);
begin
  FShowDaysBefore := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetShowSelection(const Value: Boolean);
begin
  FShowSelection := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.DoChangeMonth(dt1, dt2: TDateTime);
begin
  if Assigned(FOnMonthChange) then
    FOnMonthChange(self, dt1, dt2);
end;

procedure TXCalPlannerCalendar.DoChangeYear(dt1, dt2: TDateTime);
begin
  if Assigned(FOnYearChange) then
    FOnYearChange(self, dt1, dt2);
end;

procedure TXCalPlannerCalendar.SetGradientDirection(
  AValue: TGradientDirection);
begin
  FGradientDirection := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetGradientEndColor(AValue: TColor);
begin
  FGradientEndColor := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetGradientStartColor(AValue: TColor);
begin
  FGradientStartColor := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetMonthGradientStartColor(AValue: TColor);
begin
  FMonthGradientStartColor := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetMonthGradientEndColor(AValue: TColor);
begin
  FMonthGradientEndColor := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetMonthGradientDirection(AValue: TGradientDirection);
begin
  FMonthGradientDirection := AValue;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetShowGotoToday(const Value: Boolean);
begin
  FShowGotoToday := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetTodayFormat(const Value: string);
begin
  FTodayFormat := Value;
  Invalidate;
end;

function TXCalPlannerCalendar.IsInActiveDay(dt: TDateTime): boolean;
var
  FInActive: set of byte;
begin
  FInactive := [];
  if FInactiveDays.FSun then
    FInactive := FInactive + [1];
  if FInactiveDays.FMon then
    FInactive := FInactive + [2];
  if FInactiveDays.FTue then
    FInactive := FInactive + [3];
  if FInactiveDays.FWed then
    FInactive := FInactive + [4];
  if FInactiveDays.FThu then
    FInactive := FInactive + [5];
  if FInactiveDays.FFri then
    FInactive := FInactive + [6];
  if FInactiveDays.FSat then
    FInactive := FInactive + [7];

  Result := DayOfWeek(dt) in FInActive;
end;

procedure TXCalPlannerCalendar.YearStartChanged(Sender: TObject);
begin
  UpdateYearStart;
end;

function TXCalPlannerCalendar.GetVersion: string;
var
  vn: Integer;
begin
  vn := GetVersionNr;
  Result := IntToStr(Hi(Hiword(vn)))+'.'+IntToStr(Lo(Hiword(vn)))+'.'+IntToStr(Hi(Loword(vn)))+'.'+IntToStr(Lo(Loword(vn)));
end;

function TXCalPlannerCalendar.GetVersionNr: Integer;
begin
  Result := MakeLong(MakeWord(BLD_VER,REL_VER),MakeWord(MIN_VER,MAJ_VER));
end;

procedure TXCalPlannerCalendar.SetVersion(const Value: string);
begin

end;

{ TCalendarBrowsers }

procedure TCalendarBrowsers.Changed;
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

constructor TCalendarBrowsers.Create;
begin
  {$IFDEF TMSDOTNET}
  inherited Create;
  {$ENDIF}
  FNextMonth := True;
  FNextYear := True;
  FPrevMonth := True;
  FPrevYear := True;
end;

procedure TCalendarBrowsers.SetNextMonth(const Value: Boolean);
begin
  FNextMonth := Value;
  Changed;
end;

procedure TCalendarBrowsers.SetNextYear(const Value: Boolean);
begin
  FNextYear := Value;
  Changed;
end;

procedure TCalendarBrowsers.SetPrevMonth(const Value: Boolean);
begin
  FPrevMonth := Value;
  Changed;
end;

procedure TCalendarBrowsers.SetPrevYear(const Value: Boolean);
begin
  FPrevYear := Value;
  Changed;
end;

{ TXCalCustomCalendarPanel }

procedure TXCalCustomCalendarPanel.DoPaint;
begin
end;

procedure TXCalCustomCalendarPanel.RepaintDate(dt: TDateTime);
begin
end;

procedure TXCalCustomCalendarPanel.UpdateYearStart;
begin
  Invalidate;
end;

procedure TXCalCustomCalendarPanel.SetEventMarkerColor(const Value: TColor);
begin
  FEventMarkerColor := Value;
  Invalidate;
end;

procedure TXCalCustomCalendarPanel.SetEventMarkerShape(const Value: TEventShape);
begin
  FEventMarkerShape := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetCaptionColor(const Value: TColor);
begin
  if Value = FCaptionColor then exit;
  FCaptionColor := Value;
  Invalidate;
end;

procedure TXCalCustomCalendarPanel.SetEventDayColor(const Value: TColor);
begin
  FEventDayColor := Value;
  Invalidate;
end;

{ TCalGlyphs }

procedure TCalGlyphs.Assign(Source: TPersistent);
begin
  if (Source is TCalGlyphs) then
  begin
    NextMonth := (Source as TCalGlyphs).NextMonth;
    PrevMonth:= (Source as TCalGlyphs).PrevMonth;
    NextYear:= (Source as TCalGlyphs).NextYear;
    PrevYear:= (Source as TCalGlyphs).PrevYear;
  end;
end;

constructor TCalGlyphs.Create(AOwner: TComponent);
begin
  inherited Create;
  FOwner := AOwner;
  FNextYear := TBitmap.Create;
  FNextYear.OnChange := Changed;
  FPrevYear := TBitmap.Create;
  FPrevYear.OnChange := Changed;
  FNextMonth := TBitmap.Create;
  FNextMonth.OnChange := Changed;
  FPrevMonth := TBitmap.Create;
  FPrevMonth.OnChange := Changed;
end;

destructor TCalGlyphs.Destroy;
begin
  FNextYear.Free;
  FPrevYear.Free;
  FNextMonth.Free;
  FPrevMonth.Free;
  inherited;
end;

procedure TCalGlyphs.Changed(Sender: TObject);
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TCalGlyphs.SetNextMonth(const Value: TBitmap);
begin
  FNextMonth.Assign(Value);
  if Assigned(FOwner) then
  begin
    (FOwner as TControl).Invalidate;
  end;
end;

procedure TCalGlyphs.SetNextYear(const Value: TBitmap);
begin
  FNextYear.Assign(Value);
  if Assigned(FOwner) then
  begin
    (FOwner as TControl).Invalidate;
  end;
end;

procedure TCalGlyphs.SetPrevMonth(const Value: TBitmap);
begin
  FPrevMonth.Assign(Value);
  if Assigned(FOwner) then
  begin
    (FOwner as TControl).Invalidate;
  end;
end;

procedure TCalGlyphs.SetPrevYear(const Value: TBitmap);
begin
  FPrevYear.Assign(Value);
  if Assigned(FOwner) then
  begin
    (FOwner as TControl).Invalidate;
  end;
end;

procedure TXCalPlannerCalendar.SetHintNextMonth(AValue: String);
begin
  FHintNextMonth := AValue;
end;

procedure TXCalPlannerCalendar.SetHintNextYear(AValue: String);
begin
  FHintNextYear := AValue;
end;

procedure TXCalPlannerCalendar.SetHintPrevMonth(AValue: String);
begin
  FHintPrevMonth := AValue;
end;

procedure TXCalPlannerCalendar.SetHintPrevYear(AValue: String);
begin
  FHintPrevYear := AValue;
end;

procedure TXCalPlannerCalendar.SetBorderXP(const Value: Boolean);
begin
  FBorderXP := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetCaptionTextColor(const Value: TColor);
begin
  FCaptionTextColor := Value;
  Invalidate;
end;

procedure TXCalPlannerCalendar.SetCaption3D(Value: boolean);
begin
  FCaption3D:= Value;
  Invalidate;
end;

procedure UnLoadDLL;
begin
  if DLLLoaded then
    FreeLibrary(DLLHandle);
end;

{$IFNDEF TMSDOTNET}
procedure LoadDLL;
begin
  if DLLLoaded then Exit;

  DLLHandle := LoadLibrary('UXTHEME.DLL');
  if DLLHandle >= 32 then
  begin
    DLLLoaded := True;

    @OpenThemeData := GetProcAddress(DLLHandle,'OpenThemeData');
    Assert(@OpenThemeData <> nil);

    @CloseThemeData := GetProcAddress(DLLHandle,'CloseThemeData');
    Assert(@CloseThemeData <> nil);

    @DrawThemeBackground := GetProcAddress(DLLHandle,'DrawThemeBackground');
    Assert(@DrawThemeBackground <> nil);

    @IsThemeActive := GetProcAddress(DLLHandle,'IsThemeActive');
    Assert(@IsThemeActive <> nil);
  end;
end;
{$ENDIF}

{ TWeekDays }

procedure TWeekDays.Changed;
begin
  if Assigned(OnChanged) then
    OnChanged(Self);
end;

constructor TWeekDays.Create;
begin
  inherited;
//xxx  FSun := True;
//xxx  FSat := True;
end;

procedure TWeekDays.SetFri(const Value: Boolean);
begin
  FFri := Value;
  Changed;
end;

procedure TWeekDays.SetMon(const Value: Boolean);
begin
  FMon := Value;
  Changed;
end;

procedure TWeekDays.SetSat(const Value: Boolean);
begin
  FSat := Value;
  Changed;
end;

procedure TWeekDays.SetSun(const Value: Boolean);
begin
  FSun := Value;
  Changed;
end;

procedure TWeekDays.SetThu(const Value: Boolean);
begin
  FThu := Value;
  Changed;
end;

procedure TWeekDays.SetTue(const Value: Boolean);
begin
  FTue := Value;
  Changed;
end;

procedure TWeekDays.SetWed(const Value: Boolean);
begin
  FWed := Value;
  Changed;
end;


{mmm}
procedure TXCalPlannerCalendar.CalcBounds;
var
  s: string;
  m, n, o: Integer;
begin
  mmb := ClientRect;
  AdjustClientRect(mmb);
  InflateRect(mmb, -FSideMargins, -FSideMargins); { Temporarily }

  { Header }
  mmtb.Left := mmb.Left;
  mmtb.Right := mmb.Right;
  mmtb.Top := mmb.Top;
  mmtb.Bottom := mmtb.Top + FTopHeight;

  { Caption }
  mmcb.Left := mmtb.Left;
  mmcb.Right := mmtb.Right;
  mmcb.Top := mmtb.Top;
  mmcb.Bottom := mmcb.Top + FCaptionHeight + FSideMargins;

  { Weeks }
  mmwb.Left := mmb.Left;
  if FShowWeeks then
    mmwb.Right := mmwb.Left + FWeekColWidth
  else
    mmwb.Right := mmwb.Left;
  mmwb.Top := mmtb.Bottom + FSideMargins;
  mmwb.Bottom := mmb.Bottom;

  { Footer }
  if FShowWeeks then
    mmbb.Left := mmwb.Right + FSideMargins
  else
    mmbb.Left := mmb.Left;
  mmbb.Right := mmb.Right;
  mmbb.Bottom := mmb.Bottom;
  if FShowGotoToday then
    mmbb.Top := mmbb.Bottom - FBtnsRowHeight
  else
    mmbb.Top := mmbb.Bottom;

  { Days }
  if FShowWeeks then
    mmdb.Left := mmwb.Right + FSideMargins
  else
    mmdb.Left := mmb.Left;
  mmdb.Right := mmb.Right;
  mmdb.Top := mmtb.Bottom + FSideMargins;
  if FShowGotoToday then
    mmdb.Bottom := mmbb.Top - FSideMargins
  else
    mmdb.Bottom := mmb.Bottom;

  Fdx := (mmdb.Right - mmdb.Left) div 7;
  Fdy := (mmdb.Bottom - mmdb.Top) div 6;

  { Center it }
  m := (mmdb.Right - mmdb.Left - Fdx * 7) div 2;
  if m > 0 then
  begin
    mmdb.Left := mmdb.Left + m;
    mmdb.Right := mmdb.Right + m;
  end;
  m := (mmdb.Bottom - mmdb.Top - Fdy * 7) div 2;
  if m > 0 then
  begin
    mmdb.Top := mmdb.Top + m;
    mmdb.Bottom := mmdb.Bottom + m;
    mmwb.Top := mmdb.Top;
  end;

  InflateRect(mmb, FSideMargins, FSideMargins);


  Canvas.Font.Assign(Font);

  { Month and Year Labels }
  //xxx
  if Assigned(FXCalendar) then
    m := Canvas.TextWidth(FXCalendar.FormatSettings.LongMonthNames[Month - 1])
  else
    m := Canvas.TextWidth(LongMonthNames[Month - 1]);
  n := Canvas.TextWidth(IntToStr(Year));
  o := Canvas.TextWidth(' ');
  mmlmb.Left := mmcb.Left + (mmcb.Right - mmcb.Left - (m + o + n)) div 2;
  mmlmb.Right := mmlmb.Left + m;
  mmlyb.Left := mmlmb.Right + o;
  mmlyb.Right := mmlyb.Left + n;
  m := Canvas.TextHeight('gh');
  mmlmb.Top := mmcb.Top + Max(0, (mmcb.Bottom - mmcb.Top - m) div 2);
  mmlmb.Bottom := mmlmb.Top + m;
  mmlyb.Top := mmlmb.Top;
  mmlyb.Bottom := mmlmb.Bottom;


  { GotoToday Button }
  //xxx
  if Assigned(FXCalendar) then
    s := FXCalendar.FormatDateTime(TodayFormat, Now)
  else
    s := FormatDateTime(TodayFormat, Now);
  m := Canvas.TextHeight(s){ + 4};
  mmgtb.Left := mmbb.Left + FSideMargins;
  mmgtb.Right := mmgtb.Left + Canvas.TextWidth(s);
  if FShowGotoToday then
  begin
    mmgtb.Top := mmbb.Top + Max(0, (mmbb.Bottom - mmbb.Top - m) div 2) + 2;
    mmgtb.Bottom := mmgtb.Top + m;
  end
  else
  begin
    mmgtb.Bottom := mmbb.Bottom;
    mmgtb.Top := mmgtb.Bottom;
  end;

 { PrevYear Button }
  mmpyb.Left := mmcb.Left;
  if Browsers.PrevYear then
  begin
    if not FGlyphs.FPrevYear.Empty then
    begin
      mmpyb.Top := mmcb.Top + Max(0, (mmcb.Bottom - mmcb.Top - FGlyphs.FPrevYear.Height) div 2);
      mmpyb.Bottom := mmpyb.Top + FGlyphs.FPrevYear.Height;
      mmpyb.Right := mmpyb.Left + FGlyphs.FPrevYear.Width;
    end
    else
    begin
      mmpyb.Top := mmcb.Top;
      mmpyb.Bottom := mmpyb.Top + FCaptionHeight;
      mmpyb.Right := mmpyb.Left + FCaptionHeight;
    end;

    mmpmb.Left := mmpyb.Right;
  end
  else
  begin
    mmpyb.Right := mmpyb.Left;
    mmpyb.Top := mmcb.Top;
    mmpyb.Left := mmpyb.Top;

    mmpmb.Left := mmcb.Left;
  end;

  { PrevMonth Button }
  if Browsers.PrevMonth then
  begin
    if not FGlyphs.FPrevMonth.Empty then
    begin
      mmpmb.Top := mmcb.Top + Max(0, (mmcb.Bottom - mmcb.Top - FGlyphs.FPrevMonth.Height) div 2);
      mmpmb.Bottom := mmpmb.Top + FGlyphs.FPrevMonth.Height;
      mmpmb.Right := mmpmb.Left + FGlyphs.FPrevMonth.Width;
    end
    else
    begin
      mmpmb.Top := mmcb.Top;
      mmpmb.Bottom := mmpmb.Top + FCaptionHeight;
      mmpmb.Right := mmpmb.Left + FCaptionHeight;
    end;
  end
  else
  begin
    mmpmb.Top := mmcb.Top;
    mmpmb.Bottom := mmpmb.Top;
    mmpmb.Right := mmpmb.Left;
  end;

  { NextYear Button }
  mmnyb.Right := mmcb.Right;
  if Browsers.NextYear then
  begin
    if not FGlyphs.FNextYear.Empty then
    begin
      mmnyb.Top := mmcb.Top + Max(0, (mmcb.Bottom - mmcb.Top - FGlyphs.FNextYear.Height) div 2);
      mmnyb.Bottom := mmnyb.Top + FGlyphs.FNextYear.Height;
      mmnyb.Left := mmnyb.Right - FGlyphs.FNextYear.Width;
    end
    else
    begin
      mmnyb.Top := mmcb.Top;
      mmnyb.Bottom := mmnyb.Top + FCaptionHeight;
      mmnyb.Left := mmnyb.Right - FCaptionHeight;
    end;

    mmnmb.Right := mmnyb.Left;
  end
  else
  begin
    mmnyb.Top := mmcb.Top;
    mmnyb.Bottom := mmnyb.Top;
    mmnyb.Left := mmnyb.Right;

    mmnmb.Right := mmcb.Right;
  end;

  { NextMonth Button }
  if Browsers.NextMonth then
  begin
    if not FGlyphs.FNextMonth.Empty then
    begin
      mmnmb.Top := mmcb.Top + Max(0, (mmcb.Bottom - mmcb.Top - FGlyphs.FNextMonth.Height) div 2);
      mmnmb.Bottom := mmnmb.Top + FGlyphs.FNextMonth.Height;
      mmnmb.Left := mmnmb.Right - FGlyphs.FNextMonth.Width;
    end
    else
    begin
      mmnmb.Top := mmcb.Top;
      mmnmb.Bottom := mmnmb.Top + FCaptionHeight;
      mmnmb.Left := mmnmb.Right - FCaptionHeight;
    end;
  end
  else
  begin
    mmnmb.Top := mmcb.Top;
    mmnmb.Bottom := mmnmb.Top;
    mmnmb.Left := mmnmb.Right;
  end;

end;

procedure TXCalPlannerCalendar.Resize;
begin
  CalcBounds;
  inherited;
end;

function TXCalPlannerCalendar.IsFontStored: Boolean;
begin
  Result := not ParentFont and not DesktopFont;
end;

type
  { This is to be able to access Parent.Font because TControl.Font is protected. }
  THackWinControl = class(TWinControl)
  public
    property Font;
  end;

procedure TXCalPlannerCalendar.CMParentFontChanged(var Message: TMessage);
begin
  inherited;

  if ParentFont then
  begin
    if Message.wParam <> 0 then
    begin
      SetFont(TFont(Message.lParam));
      SetDayFont(TFont(Message.lParam));
      SetWeekFont(TFont(Message.lParam));
    end
    else if Assigned(Parent) then
    begin
      SetFont(THackWinControl(Parent).Font);
      SetDayFont(THackWinControl(Parent).Font);
      SetWeekFont(THackWinControl(Parent).Font);
    end;
  end;
end;

//xxx
procedure TXCalPlannerCalendar.SetXCalendar(AValue: TXCalendar);
var
  Y, M, D: Word;
begin
//  if Assigned(FXCalendar) then
//    FXCalendar.RemoveNotify(PropsChanged);

  FXCalendar := AValue;
  if Assigned(FXCalendar) then
  begin
//    FXCalendar.AddNotify(PropsChanged);
    FXCalendar.DecodeDate(seldate, Y, M, D);
    SetDate(D, M, Y);
  end;
  PropsChanged(nil);
end;

procedure TXCalPlannerCalendar.SetXCalEvents(AValue: TCustomXCalendarEvents);
begin
  FXCalEvents := AValue;
  if Assigned(FEOL) then
  begin
    FEOL.Free;
    FEOL := nil;
  end;
  Invalidate;
end;

procedure TXCalPlannerCalendar.GetXCalEvents;
begin
  if Assigned(FXCalEvents) then
  begin
    if Assigned(FEOL) then
      FEOL.Clear
    else
      FEOL := TXCalEventOccurenceList.Create;
    FXCalEvents.FindIntervalEvents(FirstDate, LastDate, FEOL);
    FEOL.SortByDate;
  end;
end;
{/mmm}


initialization
  RegisterClass(TXCalPlannerCalendar);
  {$IFNDEF TMSDOTNET}
  LoadDLL;
  {$ENDIF}

finalization
  {$IFNDEF TMSDOTNET}
  UnLoadDLL;
  {$ENDIF}

end.

