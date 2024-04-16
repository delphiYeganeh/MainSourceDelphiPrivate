(***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Solar Calendar Package
 *
 * The Initial Developer of the Original Code is
 * Mohammad Khorsandi
 *
 * Portions created by the Initial Developer are Copyright (C) 2006
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * ***** END LICENSE BLOCK ***** *)


 {*********************************************************}
 {*           Solar Calendar Package v1.7.2               *}
 {*********************************************************}

 {*********************************************************}
 {*     Developer : Mohammad Khorsandi                    *}
 {*     eMail : m_sandyir@yahoo.com                       *}
 {*********************************************************}


{*   Bug Fixes, Improvements History *}
{* ******************************** *}
{*  June 2007, Khordad 1386 *}
{*   - Improvement: New property BackgroundColor in TCustomSolarCalendar class for change background color *}
{*   - Bug fix: TCustomSolarCalendar.DateKind did not change layout button value *}

{*  November 2007, Azar 1386 *}
{*   - Bug fix: if Readonly was set with true the window of the calendar should not be open *}
{*   - Improvement: New Anchors property *}
{*   - Improvement: handling invalid date *}

{*  May 2008, Khordad 1387 *}
{*   - Bug fix: The numbers of the day of Esfand in leap year *}

{*   - Version is now 1.4.2 *}



{*  June, September 2008, Khordad, Tir, Mehr 1387 *}
{*   - Improvement: New DateKind property for specifying Layout in TSolarDatePicker *}
{*   - Improvement: New PersianInvalidDateMessage and EnglishInvalidDateMessage properties for customizing invalid date messages *}
{*   - Improvement: New public  Year, Month and Day properties for getting separately Year, Month and Day values *}
{*   - Improvement: New OnClick events for prior year button, next year button, layout button of main classes *}
{*   - Improvement: Hint for Prior, Next and layout buttons  *}
{*   - Improvement: Press Esc key to close popup window  *}
{*   - Bug fix: The numbers of the day of February in leap year *}
{*   - Bug fix: Fix out of position bug on popup calendar window in Delphi 2005, 2006 and 2007 *}
{*   - Improvement: weekend day color changed to Maroon color *}
{*   - Bug fix: Fix out of range the value of FCurrYear, FCurrMonth, FCurrDay variables *}
{*   - Improvement: New ShowToDay property for showing today object or not *}
{*   - Improvement: New MonthName and DayName properties for getting month name and day name *}
{*   - Bug fix: Checking input date in TCustomSolarCalendar *}
{*   - Bug fix: Fix OnExit bug *}
{*   - Improvement: Filling empty cells for showing prior and next month days *}
{*   - Improvement: Click on cells of prior and next days for going to prior or next month *}
{*   - Improvement: Click on Today label for changing date to today *}

{*   - Version is now 1.19.7 *}



{*  October 2008 - January 2009, Mehr, Day 1387 *}
{*   - Improvement: Check input date on exit event with set CheckInputOnExit to
                    true in TSolarDatePicker class *}
{*   - Improvement: Add edit box and UpDown controls on year label to easy change year *}
{*   - Improvement: Change FToDay font color when mouse cursor point to it *}
{*   - Improvement: Add moNone item to TMonthObject *}
{*   - Improvement: Add ShowCellInColor for showing cell in different colors or white color *}
{*   - Improvement: Show hint on selected cell *}
{*   - Bug fix: Fix unable to choose cells of last row bug *}
{*   - Improvement: Add Glyph property for choosing specific image for TSolarDatePicker button *}
{*   - Improvement: use CTRL+Enter in TSolarDatePicker for switch between
                    solar and gregorian datekind and vice versa *}
{*   - Improvement: open calendar windows by Ctrl+Down keys in TSolarDatePicker *}
{*   - Improvement: add DefaultShowDate for showing today as default in TSolarDatePicker *}


{*   - Version is now 1.28.8 *}

unit SolarCalendarPackage;

//{$D-}    { disable debug information    }
//{$S+}    { stack overflow checking      }

{$R Calendar_Images.res}

interface

uses
  Windows, Buttons, Classes, Controls, Forms, Graphics, Messages, StdCtrls,
  Dialogs, ComCtrls, SysUtils, Grids, ExtCtrls, Menus;


type
  TDateKind = (dkSolar, dkGregorian);
  TMonthPosition = (mpBottomRight, mpBottomCenter, mpRightYear, mpLeftYear);
  TUserInterface = (uiDefault, uiCustom);
  TMonthObject = (moPopupMenu, moComboBox, moNone);
  TGlyphType = (gtBlackArrowDown, gtCalendar, gtBlueArrowDown, gtGreenArrowDown);
  TDivider = (dSlash, dBackSlash, dLine, dUnderScore, dDot, dComma);

  TLastCell = record
    Col,
    Row: integer;
  end;

const
  {***** Error Block *****}
  ERR_INVALIDDATEFA = '. «—ÌŒ Ê«—œ ‘œÂ „⁄ »— ‰„Ìù»«‘œ° ·ÿ›«  «—ÌŒ ’ÕÌÕ —« Ê«—œ ‰„«∆Ìœ';
  ERR_INVALIDDATEEN = 'Invalid date, Enter currect date please.';
  {***** Error Block *****}

  {***** Hint Block *****}
  ST_ENNEXTYEARHINT = 'Next Year';
  ST_ENPRIORYEARHINT = 'Prior Year';
  ST_FALAYOUTHINT = 'Persian';

  ST_FANEXTYEARHINT = '”«· »⁄œ';
  ST_FAPRIORYEARHINT = '”«· ﬁ»·';
  ST_ENLAYOUTHINT = '„Ì·«œÌ';
  {***** Hint Block *****}

  {***** Color Constants Block *****}
  CL_FIRSTROWCOLOR = $00E1FFF9;     //InfoBk
  CL_SECONDROWCOLOR = $00FFEBDF;    //Blue
  CL_DISABLECELLCOLOR = $00F0F0FF;
  CL_BACKGROUNDCOLOR = $00BFBFBF;
  CL_CAPTIONCOLOR = clNavy;
  CL_SELECTEDCELLFONTCOLOR = 255;
  CL_VACATIONDAYCOLOR = clMaroon;
  CL_CELLFONTCOLOR = 0;
  CL_WHITECOLOR = clwhite;   
  {***** Color Constants Block *****}

  ST_PERSIANTODAY = '%s : «„—Ê“';
  ST_ENGLISHTODAY = 'Today : %s';
  ST_PERSIANYEAR = '%s ”«·';
  ST_ENGLISHYEAR = 'Year %s';
  ST_ABOUTSTR = 'Created by : Saber Kahalian';
  ST_VERSIONINFO = '1.28.8';

  LayoutSet: array[TDateKind, 1..1] of String = (('C'), ('‘'));

  DaySet: array[TDateKind, 1..7] of string = (
     ('Ã„⁄Â', '‘‰»Â', 'Ìò‘‰»Â', 'œÊ‘‰»Â', '”Â ‘‰»Â', 'çÂ«—‘‰»Â', 'Å‰Ã ‘‰»Â'),
     ('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat')
                                             );
  MonthSet: array[TDateKind, 1..12] of string = (
     ('›—Ê—œÌ‰ „«Â', '«—œÌ»Â‘  „«Â', 'Œ—œ«œ „«Â', ' Ì— „«Â', '„—œ«œ „«Â',
      '‘Â—ÌÊ— „«Â', '„Â— „«Â', '¬»«‰ „«Â', '¬–— „«Â', 'œÌ „«Â', '»Â„‰ „«Â', '«”›‰œ „«Â'),
     ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August',
      'September', 'October', 'November', 'December')
      );

  LeapMonth: array[TDateKind] of Byte = (12 {Esfand}, 2 {February});
  DaysOfMonths: array[TDateKind, 1..12] of Byte = (
    (  31,  31,  31,  31,  31,  31,  30,  30,  30,  30,  30,  29 )
    { Far, Ord, Kho, Tir, Mor, Sha, Meh, Aba, Aza, Day, Bah,^Esf },
    (  31,  28,  31,  30,  31,  30,  31,  31,  30,  31,  30,  31 )
    { Jan,^Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec });
  DaysToMonth: array[TDateKind, 1..13] of Word = (
    (   0,  31,  62,  93, 124, 155, 186, 216, 246, 276, 306, 336, 365 )
    { Far, Ord, Kho, Tir, Mor, Sha, Meh, Aba, Aza, Day, Bah,^Esf, *** },
    (   0,  31,  59,  90, 120, 151, 181, 212, 243, 273, 304, 334, 365 )
    { Jan,^Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec, *** });

type
  TCustomButtonEdit = class(TCustomEdit)
  private
    FButton: TBitBtn;
    FAbout: String;
    FVisibleLayoutSwitch: Boolean;
    procedure ButtonClick(Sender: TObject);
    procedure SetAbout(const Value: String);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure DoButtonClick; virtual; abstract;
    function  GetEnabled: Boolean; reintroduce;
    procedure SetEnabled(PEnable: Boolean); reintroduce;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Anchors;
    property About: String read FAbout write SetAbout;
    property BiDiMode;
    property AutoSelect;
    property BorderStyle;
    property Color;
    property Ctl3d;
    property DragCursor;
    property DragMode;
    property Font;
    property HideSelection;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property Text;
    property Visible;
    property Enabled: Boolean Read GetEnabled Write SetEnabled;
    property VisibleLayoutSwitch: Boolean read FVisibleLayoutSwitch write FVisibleLayoutSwitch default True;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;

  TCustomSolarCalendar = class(TWinControl)
  private
    FPriorButton: TSpeedButton;
    FNextButton: TSpeedButton;
    FYear: TLabel;
    FToDay: TLabel;
    FSat,
    FSun,
    FMon,
    FTus,
    FThu,
    FWed,
    FFri: TLabel;
    FCaption: TPanel;
    FGrid :TStringGrid;
    FMenu: TPopupMenu;
    FMonth: TLabel;
    FYearUpDown: TUpDown;
    FYearEdit: TEdit;
    FMiladi: String;
    FSolar: String;
    FMonthObject: TMonthObject;
    FEnabledYearButton: Boolean;
    FTextHint: String;
    FDateKind: TDateKind;
    FPrevMenuItem: Integer;
    FCurrYear: Word;
    FCurrMonth: Word;
    FCurrDay: Word;
    FDisableCellColor: TColor;
    FFirstRowColor: TColor;
    FSecondRowColor: TColor;
    FMonthPosition: TMonthPosition;
    FUserInterFace: TUserInterface;
    FCellFontColor: TColor;
    FSelectedCellFontColor: TColor;
    FMonthCombo: TComboBox;
    FLayout: TSpeedButton;
    LastCol: Byte;
    LastRow: Byte;
    FInDate: String;
    FBackgroundColor: TColor;
    FCaptionColor: TColor;
    FAbout: String;
    FFirstCell: integer;
    FLastCell: TLastCell;
    FShowToDay: Boolean;
    FTempYear: integer;
    FCanvas: TControlCanvas;
    FShowCellInColor: boolean;
    FVisibleLayoutSwitch: Boolean;
//    FToDayPos: integer;
    function GetCanvas: TCanvas;
    procedure ToDayClick(Sender: TObject);
    Procedure CreateObjects();
    Procedure MonthChanging();
    Procedure GridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    Procedure GridSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean); virtual;
    Procedure ClickPriorBtn(Sender: TObject);
    Procedure ClickNextBtn(Sender: TObject);
    Procedure MenuItemClick(Sender: TObject);
    Procedure MonthSetting();
    Procedure SetYearButton(Prm_Value: Boolean);
    Function GetOnCellClick: TNotifyEvent;
    Procedure SetOnCellClick(Value: TNotifyEvent);
    Procedure SetDate(out SDate, MDate: String; PKind: Byte);
    procedure SetDateKind(const Value: TDateKind); 
    procedure SetDisableCellColor(const Value: TColor);
    procedure SetFirstRowColor(const Value: TColor);
    procedure SetSecondRowColor(const Value: TColor);
    procedure SetMonthPosition(const Value: TMonthPosition);
    procedure SetDefaultSetting(const Value: TUserInterface);
    procedure SetCellFontColor(const Value: TColor);
    procedure SetSelectedCellFontColor(const Value: TColor);
    procedure SetMonthObject(const Value: TMonthObject);
    procedure MonthComboClick(Sender: TObject);
    procedure SetComboBox();
    procedure SetInDate(const Value: String);
    procedure ClickLayout(Sender: TObject);
    Procedure WMSize(var Message: TWMSize); Message WM_SIZE;
    procedure SetToDay;
    function GetToDay: string;
    procedure SetBackgroundColor(const Value: TColor);
    procedure SetCaptionColor(const Value: TColor);
    procedure SetAbout(const Value: String);
    procedure SetHint();
    function GetPrevMonthDays: integer;
    procedure FillPrevMonthDayCells;
    procedure FillNextMonthDayCells;
    procedure SetShowToDay(const Value: Boolean);
    function GetMonthName: string;
    function GetDayName: string;
    function CheckInputDate(Year, Month, Day: word): boolean;
    procedure SetPriorYear;
    procedure SetNextYear;
    procedure YearOnClick(Sender: TObject);
    procedure CaptionOnClick(Sender: TObject);
    procedure YearEditKeyPress(Sender: TObject; var Key: Char);
    procedure YearUpDownChange(Sender: TObject; var AllowChange: Boolean;
                               NewValue: Smallint; Direction: TUpDownDirection);
    procedure YearEditContextPopup(Sender: TObject; MousePos: TPoint;
                                  var Handled: Boolean);
    procedure GridMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

    procedure SetYear(Value: integer);
    procedure SetYearEditVisibility(value: boolean);
    procedure ToDayMouseEnter(Sender: TObject);
    procedure ToDayMouseLeave(Sender: TObject);
    procedure ClearGridCurrMonthCells;
    procedure ClearGridNextMonthCells;
    procedure ClearGridPrevMonthCells;
    function InThisRange(ACol, ARow: integer): boolean;
    procedure SetShowCellInColor(const Value: boolean);
    procedure SetVisibleLayoutSwitch(const Value: Boolean);
    { Private declarations }
  protected
    FOnLayoutClick: TNotifyEvent;
    FOnNextClick: TNotifyEvent;
    FOnPrevClick: TNotifyEvent;
    { Protected declarations }
  public
    OutDate: String;
    Constructor Create(AOwner: TComponent); Override;
    Destructor Destroy; override;
    property Canvas: TCanvas read GetCanvas;    
    Property InDate: String Read FInDate Write SetInDate;
    property MonthName: string Read GetMonthName;
    property DayName: string Read GetDayName;
    { Public declarations }
  published
    property About: String read FAbout write SetAbout;
    Property Visible;
    Property EnableYearButtons: Boolean Read FEnabledYearButton Write SetYearButton default True;
    Property MonthObject: TMonthObject Read FMonthObject Write SetMonthObject;
    Property MiladiDate: String Read FMiladi Write FMiladi;
    Property HintText: String Read FTextHint Write FTextHint;
    Property SolarDate: String Read FSolar Write FSolar;
    Property DateKind: TDateKind Read FDateKind Write SetDateKind;
    Property DisableCellColor: TColor Read FDisableCellColor Write SetDisableCellColor;
    Property FirstRowColor: TColor Read FFirstRowColor Write SetFirstRowColor;
    Property SecondRowColor: TColor Read FSecondRowColor Write SetSecondRowColor;
    Property MonthPosition: TMonthPosition Read FMonthPosition Write SetMonthPosition;
    Property UserInterface: TUserInterface Read FUserInterFace Write SetDefaultSetting;
    Property CellFontColor: TColor Read FCellFontColor Write SetCellFontColor;
    Property SelectedCellFontColor: TColor Read FSelectedCellFontColor write SetSelectedCellFontColor;
    Property BackgroundColor: TColor Read FBackgroundColor Write SetBackgroundColor;
    Property CaptionColor: TColor Read FCaptionColor Write SetCaptionColor;
    Property ShowToDay: Boolean Read FShowToDay Write SetShowToDay;
    property ShowCellInColor: boolean read FShowCellInColor write SetShowCellInColor;
    property VisibleLayoutSwitch: Boolean read FVisibleLayoutSwitch write SetVisibleLayoutSwitch;
    Property OnDayClick: TNotifyEvent Read GetOnCellClick Write SetOnCellClick;
    property OnNextClick: TNotifyEvent read FOnNextClick write FOnNextClick;
    property OnPrevClick: TNotifyEvent read FOnPrevClick write FOnPrevClick;
    property OnLayoutClick: TNotifyEvent read FOnLayoutClick write FOnLayoutClick;
    { Published declarations }
  end;

  TSolarDatePicker = Class(TCustomButtonEdit)
  Private
    FCurrYear: Word;
    FCurrMonth: Word;
    FCurrDay: Word;
    FCustomSolarCalendar: TCustomSolarCalendar;
    FOnButtonClick: TNotifyEvent;
    FCheckInputOnExit: Boolean;
    FPersianInvalidDateMessage: string;
    FEnglishInvalidDateMessage: string;
    FDateKind: TDateKind;
    FOnLayoutClick: TNotifyEvent;
    FOnNextClick: TNotifyEvent;
    FOnPrevClick: TNotifyEvent;
    FDivider: TDivider;
    FDividerStr: string[1];
    FShowToDay: Boolean;
    FShowCellInColor: boolean;
    FMonthObject: TMonthObject;
    FGlyph: TGlyphType;
    FShowDefaultDate: boolean;
    Procedure CellDblClick4Close(Sender: TObject);
    procedure ShowPopup();
    procedure ShowInvalidDateMsg;
    function GetDay: integer;
    function GetMonth: integer;
    function GetYear: integer;
    function GetDayName: string;
    function GetMonthName: string;
    procedure SetDivider(const Value: TDivider);
    procedure SetGlyph(const Value: TGlyphType);
    procedure SetShowDefaultDate(const Value: boolean);
  Protected
    procedure DoButtonClick; override;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure WMKeyDown(var Message: TWMKey); message WM_KEYDOWN;
  Public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    property Year: integer read GetYear;
    property Month: integer read GetMonth;
    property Day: integer read GetDay;
    property MonthName: string Read GetMonthName;
    property DayName: string Read GetDayName;
  published
    Property DateKind: TDateKind Read FDateKind Write FDateKind;
    property PersianInvalidDateMessage: string read FPersianInvalidDateMessage write FPersianInvalidDateMessage;
    property EnglishInvalidDateMessage: string read FEnglishInvalidDateMessage write FEnglishInvalidDateMessage;
    property CheckInputOnExit: Boolean read FCheckInputOnExit write FCheckInputOnExit;
    Property Divider: TDivider read FDivider write SetDivider;
    Property ShowToDay: Boolean Read FShowToDay Write FShowToDay;
    property ShowCellInColor: boolean read FShowCellInColor write FShowCellInColor;
    Property MonthObject: TMonthObject read FMonthObject write FMonthObject;
    property Glyph: TGlyphType read FGlyph write SetGlyph;
    property ShowDefaultDate: boolean read FShowDefaultDate write SetShowDefaultDate;
//    property VisibleLayoutSwitch: Boolean read FVisibleLayoutSwitch write SetVisibleLayoutSwitch;          
    property OnButtonClick: TNotifyEvent read FOnButtonClick write FOnButtonClick;
    property OnNextClick: TNotifyEvent read FOnNextClick write FOnNextClick;
    property OnPrevClick: TNotifyEvent read FOnPrevClick write FOnPrevClick;
    property OnLayoutClick: TNotifyEvent read FOnLayoutClick write FOnLayoutClick;
  End;

  TSolarMonthCalendar = Class(TCustomSolarCalendar)
  Private
    function GetYear: integer;
    function GetDay: integer;
    function GetMonth: integer;
  Public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    property Year: integer read GetYear;
    property Month: integer read GetMonth;
    property Day: integer read GetDay;
    property OnNextClick;
    property OnPrevClick;
    property OnLayoutClick;
  End;

procedure Register;

var
  CBBmp: TBitMap;

implementation

function ConcatenateDate(ACurrMonth: integer; AYear, AMonth, ADay: Word): String;
var
  Output: String;
begin
  Output := IntToStr(AYear) + '/';

  if ACurrMonth < 10 then
    Output := Output + '0' + IntToStr(AMonth) + '/'
  else
    Output := Output + IntToStr(AMonth) +  '/';

  if ADay < 10 then
    Output := Output + '0' + IntToStr(ADay)
  else
    Output := Output + IntToStr(ADay);

  Result := Output;
end;


procedure SeparateYMD(Date: string; var Year, Month, Day: word);
var
  sTemp: String;
begin
  if Length(Trim(Date)) <> 0 then
  begin 
    sTemp := Date;

    Year := StrToInt(Copy(sTemp, 1, Pos('/', sTemp) - 1));

    if Length(IntToStr(Year)) < 4 then
      Year := 0;

    Delete(sTemp, 1, Pos('/', sTemp));

    Month := StrToInt(Copy(sTemp, 1, Pos('/', sTemp) - 1));

    if Month > 12 then
      Month := 0;

    Delete(sTemp, 1, Pos('/', sTemp));

    Day := StrToInt(sTemp);

    if Day > 31 then
      Day := 0;
  end
  else
  begin
    Year := 0;
    Month := 0;
    Day := 0;
  end;    
end;

procedure ResetYMD(Date: string; var Year, Month, Day: word);
begin
  SeparateYMD(Date, Year, Month, Day);
  
  if Length(Trim(Date)) = 0 then
  begin
    Year := 0;
    Month := 0;
    Day := 0;
  end
  else
  if (Year = 0) or (Month = 0) or (Day = 0) then
  begin
    Year := 0;
    Month := 0;
    Day := 0;
  end
  else
  if Length(Date) < 10 then
    ResetYMD(Date, Year, Month, Day);
end;


function IsLeapYear(DateKind: TDateKind; Year: Word): Boolean;
begin
  if DateKind = dkSolar then
    Result := ((((LongInt(Year) + 38) * 31) mod 128) <= 30)
  else
    Result := ((Year mod 4) = 0) and (((Year mod 100) <> 0) or ((Year mod 400) = 0));
end;

function DaysOfMonth(DateKind: TDateKind; Year, Month: Word): Word;
begin
  if (Year <> 0) and (Month in [1..12]) then
  begin
    Result := DaysOfMonths[DateKind, Month];
    if (Month = LeapMonth[DateKind]) and IsLeapYear(DateKind, Year) then
      Inc(Result);
  end
  else
    Result := 0;
end;

function IsDateValid(DateKind: TDateKind; Year, Month, Day: Word): Boolean;
begin
  Result := (Year <> 0) and (Month >= 1) and (Month <= 12) and
            (Day >= 1) and (Day <= DaysOfMonth(DateKind, Year, Month));
end;

function DaysToDate(DateKind: TDateKind; Year, Month, Day: Word): Word;
begin
  if IsDateValid(DateKind, Year, Month, Day) then
  begin
    Result := DaysToMonth[DateKind, Month] + Day;
    if (Month > LeapMonth[DateKind]) and IsLeapYear(DateKind, Year) then
      Inc(Result);
  end
  else
    Result := 0;
end;

function DateOfDay(DateKind: TDateKind; Days, Year: Word; var Month, Day: Word): Boolean;
var
  LeapDay, m: Integer;
begin
  LeapDay := 0;
  Month := 0;
  Day := 0;
  for m := 2 to 13 do
  begin
    if (m > LeapMonth[DateKind]) and IsLeapYear(DateKind, Year) then
      LeapDay := 1;
    if Days <= (DaysToMonth[DateKind, m] + LeapDay) then
    begin
      Month := m - 1;
      if Month <= LeapMonth[DateKind] then LeapDay := 0;
      Day := Days - (DaysToMonth[DateKind, Month] + LeapDay);
      Break;
    end;
  end;
  Result := IsDateValid(DateKind, Year, Month, Day);
end;

function GregorianToSolar(var Year, Month, Day: Word): Boolean;
var
  LeapDay, Days: Integer;
  PrevGregorianLeap: Boolean;
begin
  if IsDateValid(dkGregorian, Year, Month, Day) then
  begin
    PrevGregorianLeap := IsLeapYear(dkGregorian, Year - 1);
    Days := DaysToDate(dkGregorian, Year, Month, Day);
    Dec(Year, 622);
    if IsLeapYear(dkSolar, Year) then
      LeapDay := 1
    else
      LeapDay := 0;
    if PrevGregorianLeap and (LeapDay = 1) then
      Inc(Days, 287)
    else
      Inc(Days, 286);
    if Days > (365 + LeapDay) then
    begin
      Inc(Year);
      Dec(Days, 365 + LeapDay);
    end;

    Result := DateOfDay(dkSolar, Days, Year, Month, Day);
  end
  else
    Result := False;
end;

function SolarToGregorian(var Year, Month, Day: Word): Boolean;
var
  LeapDay, Days: Integer;
  PrevSolarLeap: Boolean;
begin
  if IsDateValid(dkSolar, Year, Month, Day) then
  begin
    PrevSolarLeap := IsLeapYear(dkSolar, Year-1);
    Days := DaysToDate(dkSolar, Year, Month, Day);
    Inc(Year, 621);

    if IsLeapYear(dkGregorian, Year) then
      LeapDay := 1
    else
      LeapDay := 0;

    if PrevSolarLeap and (LeapDay = 1) then
      Inc(Days, 80)
    else
      Inc(Days, 79);

    if Days > (365 + LeapDay) then
    begin
      Inc(Year);
      Dec(Days, 365 + LeapDay);
    end;

    Result := DateOfDay(dkGregorian, Days, Year, Month, Day);
  end
  else
    Result := False;
end;

type
  TPopupForm = class(TCustomForm)
  private
    FOwner: TSolarDatePicker;
    FHookedForm: TCustomForm;
    FOrgFormProc: Pointer;
    procedure HookForm;
    procedure UnhookForm;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    constructor Create(AOwner: TSolarDatePicker); reintroduce;
    destructor Destroy; override;
  end;

var
  FPopupForm: TPopupForm;

procedure Register;
begin
  RegisterComponents('VCLComponent', [TSolarDatePicker,
                                        TSolarMonthCalendar]);
end;

{ Helper functions }
procedure HidePopupForm;
begin
  if  Assigned(FPopupForm) then
  begin
    FPopupForm.UnhookForm;
//    FOwner.DoAfterHide;  popup window //for handling AfterHide event
    FPopupForm.Release;
    FPopupForm := nil;
  end;
end;

function HookFormProc(Wnd: HWND; Msg, wParam, lParam: LongInt): LongInt; stdcall;
begin
  if Assigned(FPopupForm) then
  begin
    case Msg of
      WM_NCACTIVATE: Result := 1;
      WM_ACTIVATEAPP,
      WM_NCLBUTTONDOWN,
      WM_NCRBUTTONDOWN,
      WM_LBUTTONDOWN,
      WM_RBUTTONDOWN,
      WM_PARENTNOTIFY:
      begin
        HidePopupForm;
        Result := DefWindowProc(Wnd, Msg, wParam, lParam);
      end;
      else
        Result := CallWindowProc(FPopupForm.FOrgFormProc, Wnd, Msg, wParam, lParam);
    end;
  end
  else
  begin
    Result := DefWindowProc(Wnd, Msg, wParam, lParam);
  end;
end;

procedure TCustomButtonEdit.ButtonClick(Sender: TObject);
begin
  DoButtonClick;
// SetFocus;
end;

procedure TCustomButtonEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or WS_CLIPCHILDREN;
end;

function TCustomButtonEdit.GetEnabled: boolean;
begin
  result := inherited Enabled;
end;

procedure TCustomButtonEdit.SetEnabled(PEnable: boolean);
begin
  inherited Enabled := PEnable;
  FButton.Enabled := PEnable;
end;

procedure TCustomButtonEdit.WMSize(var Message: TWMSize);
var
  nKind: integer;
begin
  if (BorderStyle = bsSingle) and not Ctl3d then
     nkind := 1
  else
     nKind := 0;

  FButton.Top := nKind;
  FButton.Height := (ClientHeight - nKind * 2) + 1;  // 1 for new res image
  FButton.Width := FButton.Height + 2; // 2 for new res image

  if BiDiMode = bdlefttoright then
    FButton.Left := ClientWidth - FButton.Width - nKind
  else
    FButton.Left := 0;
end;

constructor TCustomButtonEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle - [csSetCaption];
  ParentBiDiMode := False;
  FAbout := ST_ABOUTSTR;

  FVisibleLayoutSwitch := True;

  FButton := TBitBtn.Create(self);
  with FButton do
  begin
    Parent := Self;
    TabStop := False;
    Visible := True;
    OnClick := ButtonClick;
  end;

  FButton.Margin := 0;
  FButton.Layout := blGlyphLeft;
  FButton.Glyph := CBBmp;
end;

Constructor TCustomSolarCalendar.Create(AOwner: TComponent);
Begin
  Inherited Create(AOwner);
  Width := 325;
  Height := 215;

  FCanvas := TControlCanvas.Create;
  FCanvas.Control := Self;

  Color := CL_BACKGROUNDCOLOR; //$00BFBFBF;
  FAbout := ST_ABOUTSTR;  
  Font.Name := 'Tahoma';
  BiDiMode := bdLeftToRight;
  ParentBiDiMode := False;
  FUserInterFace := uiDefault;

  FFirstRowColor := CL_FIRSTROWCOLOR;
  FSecondRowColor := CL_SECONDROWCOLOR;
  FDisableCellColor := CL_DISABLECELLCOLOR;
  FSelectedCellFontColor := CL_SELECTEDCELLFONTCOLOR;
  FCellFontColor := CL_CELLFONTCOLOR;
  FBackgroundColor := CL_BACKGROUNDCOLOR;
  FCaptionColor := CL_CAPTIONCOLOR;
  FShowCellInColor := true;
  FVisibleLayoutSwitch := true;    

//  FMonthObject := moPopupMenu;
  FEnabledYearButton := True;
  FShowToDay := True;

  FGrid := TStringGrid.Create(Self);
  FCaption := TPanel.Create(Self);
  FPriorButton := TSpeedButton.Create(Self);
  FNextButton := TSpeedButton.Create(Self);
  FYear := TLabel.Create(Self);
  FToDay := TLabel.Create(Self);
  FSat := TLabel.Create(Self);
  FSun := TLabel.Create(Self);
  FMon := TLabel.Create(Self);
  FTus := TLabel.Create(Self);
  FThu := TLabel.Create(Self);
  FWed := TLabel.Create(Self);
  FFri := TLabel.Create(Self);
  FMonth := TLabel.Create(Self);
  FLayout := TSpeedButton.Create(Self);
  FYearUpDown := TUpDown.Create(Self);
  FYearEdit:= TEdit.Create(Self);

  SetDate(FSolar, FMiladi, 0);
  CreateObjects();
End;

Procedure TCustomSolarCalendar.WMSize(var Message: TWMSize);
Begin
  Width := 323;
  Height := 215;
End;

Procedure TCustomSolarCalendar.MonthSetting();
Var
  iCounter: Integer;
  MenuItems: TMenuItem;
Begin
  FMenu := TPopupMenu.Create(Self);
  FMenu.Items.Clear;

  For iCounter := 1 To 12 do
  Begin
    MenuItems := TMenuItem.Create(Self);
    MenuItems.Caption := MonthSet[FDateKind, iCounter];
    MenuItems.OnClick := MenuItemClick;
    FMenu.Items.Add(MenuItems);
  End;

  FMenu.Items[FPrevMenuItem - 1].RadioItem := True;
  FMenu.Items[FPrevMenuItem - 1].Checked := True;

  if FMonthObject = moPopupMenu then
    FGrid.PopupMenu := FMenu;

 FMonth.Caption := MonthSet[FDateKind, FPrevMenuItem - 1];
End;

Procedure TCustomSolarCalendar.MenuItemClick(Sender: TObject);
Var
  Item: TMenuItem;
Begin
  FMenu.Items[FPrevMenuItem - 1].Checked := False;
  Item := Sender as TMenuItem;
  FMenu.Items[Item.MenuIndex].Checked := True;
  FMenu.Items[Item.MenuIndex].RadioItem := True;
  FPrevMenuItem := Item.MenuIndex + 1;
  FCurrMonth := Item.MenuIndex + 1;
  OutDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);
  FInDate := OutDate; //1384-03-15
  MonthChanging();
End;


procedure TCustomSolarCalendar.ClearGridPrevMonthCells();
var
  iCounter: integer;
begin
  for iCounter := FFirstCell downto 1 do
    FGrid.Cells[FFirstCell - iCounter, 0] := '';
end;

procedure TCustomSolarCalendar.ClearGridNextMonthCells();
var
  iCol: integer;
  iRow: integer;
begin
  if (FLastCell.Row = 3) and (FLastCell.Col = 6) then
  begin
    for iRow := 4 to 6 do
      for iCol := 0 to 6 do
        FGrid.Cells[iCol, iRow] := '';
  end
  else
  if FLastCell.Row = 4 then
  begin
    for iCol := FLastCell.Col + 1 to 6 do
      FGrid.Cells[iCol, 4] := '';

    for iCol := 0 to 6 do
      FGrid.Cells[iCol, 5] := '';
  end
  else
  if FLastCell.Row = 5 then
    for iCol := FLastCell.Col + 1 to 6 do
      FGrid.Cells[iCol, 5] := '';
end;

procedure TCustomSolarCalendar.ClearGridCurrMonthCells;
var
  iRow, iCol: byte;
begin
  for iRow := 0 to 5 do
    for iCol := 0 to 6 do
      FGrid.Cells[iCol, iRow] := '';
end;

Procedure TCustomSolarCalendar.MonthChanging();
Var
  Year, Month, Day: Word;
  FWeek: Byte;
  iDay, iCol, iRow: Byte;
Begin
  Year := FCurrYear;
  Month := FPrevMenuItem;
  FFirstCell := -1;
  FLastCell.Col := -1;
  FLastCell.Row := -1;
  Day := 1;

  if (csloading in Self.componentstate) and (FMonthObject = moComboBox) then
    FMonthCombo.ItemIndex := FPrevMenuItem - 1;

  if FDateKind = dkSolar then
  begin
    FMonth.Caption := MonthSet[dkSolar, Month];
    SolarToGregorian(Year, Month, Day);
  end
  else
  if FDateKind = dkGregorian then
  begin
    FMonth.Caption := MonthSet[dkGregorian, Month];
    DecodeDate(EncodeDate(Year, Month, Day), Year, Month, Day);
    Day := 1;
  end;

  FWeek := DayOfWeek(EncodeDate(Year, Month, Day));

  ClearGridCurrMonthCells();

  iDay := 1;
  FGrid.OnSelectCell := nil;

  if FDateKind = dkSolar then
  begin
    if FWeek = 7 then
      FWeek := 0;

    for iRow := 0 to 5 do
    begin
      for iCol := FWeek To 6 do
      begin

        if (FCurrMonth <> 12) then
          If iDay > DaysOfMonths[FDateKind, FPrevMenuItem {+ 1}] Then
            Break
          else
        else
          if IsLeapYear(dkSolar, FCurrYear) then
            If iDay > DaysOfMonths[FDateKind, FPrevMenuItem] + 1 Then
              Break
            else
          else
            If iDay > DaysOfMonths[FDateKind, FPrevMenuItem] Then
              Break;

        if FCurrDay = iDay then
        begin
          FGrid.Col := iCol;
          FGrid.Row := iRow;
          FGrid.OnSelectCell := GridSelectCell;
        end;

        FGrid.Cells[iCol, iRow] := IntToStr(iDay);

        if FFirstCell = -1 then
          FFirstCell := iCol;

        if iDay = DaysOfMonths[FDateKind, FCurrMonth] then
        begin
           FLastCell.Col := iCol;
           FLastCell.Row := iRow;
        end;

        Inc(iDay);
      end;
      FWeek := 0;
    end;

    if FMonthObject <> moNone then
    begin
      FillPrevMonthDayCells();
      FillNextMonthDayCells();
    end;  
  end
  else
  begin
    if FWeek > 0 then
      Dec(FWeek);
    For iRow := 0 To 5 Do
    Begin
      For iCol := FWeek To 6 Do
      Begin
      
        if (FCurrMonth <> 2) then
          If iDay > DaysOfMonths[FDateKind, FPrevMenuItem {+ 1}] Then
            Break
          else
        else
          if IsLeapYear(dkGregorian, FCurrYear) then
            If iDay > DaysOfMonths[FDateKind, FPrevMenuItem] + 1 Then
              Break
            else
          else
            If iDay > DaysOfMonths[FDateKind, FPrevMenuItem] Then
              Break;

        if FCurrDay = iDay then
        begin
          FGrid.Col := iCol;
          FGrid.Row := iRow;
          FGrid.OnSelectCell := GridSelectCell;
        end;

        FGrid.Cells[iCol, iRow] := IntToStr(iDay);

        if FFirstCell = -1 then
          FFirstCell := iCol;

        if iDay = DaysOfMonths[FDateKind, FCurrMonth] then
        begin
           FLastCell.Col := iCol;
           FLastCell.Row := iRow;
        end;

        Inc(iDay);
      end;
      FWeek := 0;
    end;

    if FMonthObject <> moNone then
    begin
      FillPrevMonthDayCells();
      FillNextMonthDayCells();
    end;  
  end;
end;

procedure TCustomSolarCalendar.FillPrevMonthDayCells();
var
  iCounter: integer;
  PrevMonthDays: integer;
begin
  PrevMonthDays := GetPrevMonthDays;

  for iCounter := FFirstCell downto 1 do
    FGrid.Cells[FFirstCell - iCounter, 0] := IntToStr(PrevMonthDays - iCounter + 1);
end;

procedure TCustomSolarCalendar.FillNextMonthDayCells;
var
  iCol: integer;
  iRow: integer;
  iCounter: integer;
begin
  iCounter := 1;

  if (FLastCell.Row = 3) and (FLastCell.Col = 6) then
  begin
    for iRow := 4 to 6 do
      for iCol := 0 to 6 do
      begin
        FGrid.Cells[iCol, iRow] := IntToStr(iCounter);
        Inc(iCounter);
      end;

//      FLastCell.Row := 4;
//      FLastCell.Col := 0;
  end
  else
  if FLastCell.Row = 4 then
  begin
    for iCol := FLastCell.Col + 1 to 6 do
    begin
      FGrid.Cells[iCol, 4] := IntToStr(iCounter);
      Inc(iCounter);
    end;

    for iCol := 0 to 6 do
    begin
      FGrid.Cells[iCol, 5] := IntToStr(iCounter);
      Inc(iCounter);
    end;
  end
  else
  if FLastCell.Row = 5 then
  begin
    for iCol := FLastCell.Col + 1 to 6 do
    begin
      FGrid.Cells[iCol, 5] := IntToStr(iCounter);
      Inc(iCounter);
    end;
  end;
end;

procedure TCustomSolarCalendar.SetYear(Value: integer);
begin
  if FCurrYear <> Value then
  begin
    FCurrYear := Value;
    if FDateKind = dkSolar then
      FYear.Caption := Format(ST_PERSIANYEAR,[IntToStr(FCurrYear)])
    else
      FYear.Caption := Format(ST_ENGLISHYEAR,[IntToStr(FCurrYear)]);

    OutDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);
    MonthChanging();
  end;  
end;

procedure TCustomSolarCalendar.SetPriorYear();
begin
  Dec(FCurrYear);
  if FDateKind = dkSolar then
    FYear.Caption := Format(ST_PERSIANYEAR,[IntToStr(FCurrYear)])
  else
    FYear.Caption := Format(ST_ENGLISHYEAR,[IntToStr(FCurrYear)]);

  OutDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);
  MonthChanging();
end;

Procedure TCustomSolarCalendar.ClickPriorBtn(Sender: TObject);
Begin
  SetPriorYear();

  SetYearEditVisibility(false);
  
  if Assigned(FOnPrevClick) then
    FOnPrevClick(Self);
End;

procedure TCustomSolarCalendar.SetNextYear();
begin
  Inc(FCurrYear);
  if FDateKind = dkSolar then
    FYear.Caption := Format(ST_PERSIANYEAR,[IntToStr(FCurrYear)])
  else
    FYear.Caption := Format(ST_ENGLISHYEAR,[IntToStr(FCurrYear)]);

  OutDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);
  MonthChanging();
end;

Procedure TCustomSolarCalendar.ClickNextBtn(Sender: TObject);
Begin
  SetNextYear();

  SetYearEditVisibility(false);
  
  if Assigned(FOnNextClick) then
    FOnNextClick(Self);
End;

Procedure TCustomSolarCalendar.GridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
Begin
  with (Sender as TStringGrid) do
  begin
    if FUserInterFace = uiDefault then
    begin
      Canvas.Font.Color := CL_CELLFONTCOLOR;

      if gdselected in state then
      begin
        Canvas.Font.Color := CL_SELECTEDCELLFONTCOLOR;
        Canvas.Font.Style := [fsBold];
      end;

      if FShowCellInColor then
        if ARow mod 2 = 0 then
          Canvas.Brush.Color := CL_FIRSTROWCOLOR
        else
          Canvas.Brush.Color := CL_SECONDROWCOLOR
      else
        Canvas.Brush.Color := CL_WHITECOLOR;

      if (ACol < FFirstCell) and (ARow = 0) then
      begin
        Canvas.Brush.Color := CL_DISABLECELLCOLOR;
        Canvas.Font.Color := clGray;
        Canvas.FillRect(Rect);
      end;

      if (ARow >= FLastCell.Row) and (ACol > FLastCell.Col) then
      begin
        Canvas.Brush.Color := CL_DISABLECELLCOLOR;
        Canvas.Font.Color := clGray;
        Canvas.FillRect(Rect);
      end
      else  
      if (FLastCell.Row = 4) and (ARow = 5) then
      begin
        Canvas.Brush.Color := CL_DISABLECELLCOLOR;
        Canvas.Font.Color := clGray;
        Canvas.FillRect(Rect);
      end
      else
      if (ARow in [4..5]) and ((FLastCell.Row = 3) and (FLastCell.Col = 6)) and
         (DaysOfMonths[FDateKind, FCurrMonth] = 28) then
      begin
        Canvas.Brush.Color := CL_DISABLECELLCOLOR;
        Canvas.Font.Color := clGray;
        Canvas.FillRect(Rect);
      end;

      Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
      Canvas.FrameRect(Rect);
    end
    else
    if FUserInterFace = uiCustom then
    begin
      Canvas.Font.Color := FCellFontColor;

      if gdSelected in State then
      begin
        Canvas.Font.Color := FSelectedCellFontColor;
        Canvas.Font.Style := [fsBold];        
      end;


      if ARow mod 2 = 0 then
        Canvas.Brush.Color := FFirstRowColor
      else
        Canvas.Brush.Color := FSecondRowColor;

      if (ACol < FFirstCell) and (ARow = 0) then
      begin
        Canvas.Brush.Color := CL_DISABLECELLCOLOR;
        Canvas.Font.Color := clGray;
        Canvas.FillRect(Rect);
      end;

      if (ARow >= FLastCell.Row) and (ACol > FLastCell.Col) then
        if (ACol > FLastCell.Col) then
        begin
          Canvas.Brush.Color := CL_DISABLECELLCOLOR;
          Canvas.Font.Color := clGray;
          Canvas.FillRect(Rect);
        end
      else
      if (FLastCell.Row = 4) and (ARow = 5) then
      begin
        Canvas.Brush.Color := CL_DISABLECELLCOLOR;
        Canvas.Font.Color := clGray;
        Canvas.FillRect(Rect);
      end
      else
      if (ARow in [4..5]) and ((FLastCell.Row = 3) and (FLastCell.Col = 6)) and
         (DaysOfMonths[FDateKind, FCurrMonth] = 28) then
      begin
        Canvas.Brush.Color := CL_DISABLECELLCOLOR;
        Canvas.Font.Color := clGray;
        Canvas.FillRect(Rect);
      end;

      Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
      Canvas.FrameRect(Rect);
    end;

    if ((FDateKind = dkSolar) and (ACol = 6)) and not(gdselected in State) and
       ((ARow < FLastCell.Row) and (ACol > FLastCell.Col)) then
    begin
      Canvas.Font.Color := CL_VACATIONDAYCOLOR;
      Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
    end
    else
    if ((ACol <> FFirstCell) and (ARow <> 0)) and (ARow <= FLastCell.Row) then
      if ((FDateKind = dkGregorian) and (ACol = 0)) and not(gdselected in State) then
      begin
        Canvas.Font.Color := CL_VACATIONDAYCOLOR;
        Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
      end
      else
    else
    if ((FDateKind = dkGregorian) and (ACol = 0)) and not(gdselected in State) and
       ((FLastCell.Row = 3) and (FLastCell.Col = 6)) and (ARow in [0..3]) then
    begin
      Canvas.Font.Color := CL_VACATIONDAYCOLOR;
      Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
    end
  end;
End;

function TCustomSolarCalendar.InThisRange(ACol, ARow: integer): boolean;
begin
  Result := false;

  if (FLastCell.Row = 3) and (ARow > 3) then
    Result := true
  else
  if (FLastCell.Row = 4) and (ARow = 4) and (ACol > FLastCell.Col) then
    Result := true
  else
  if (FLastCell.Row = 5) and (ARow = 5) and (ACol > FLastCell.Col) then
    Result := true
  else
  if (FLastCell.Row = 4) and (ARow = 5) then
    Result := true;
end;


Procedure TCustomSolarCalendar.GridSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  if ((ACol < FFirstCell) and (ARow = 0)) then
  begin
    if FMonthObject = moPopupMenu then
      if FCurrMonth > 1 then
        MenuItemClick(FMenu.Items[FCurrMonth - 2])
      else
      begin
        MenuItemClick(FMenu.Items[11]);
        SetPriorYear();
      end
    else
    begin
    if FMonthObject = moComboBox then
      if FCurrMonth > 1 then
      begin
          FMonthCombo.ItemIndex := FCurrMonth - 2;
          MonthComboClick(Sender);
      end
      else
      begin
        FMonthCombo.ItemIndex := 11;
        MonthComboClick(Sender);
        SetPriorYear();
      end;
    end;
  end
  else
  //!!!
{  if ((FLastCell.Row >= 4) and (ARow >= 4) and not(ACol in [0..FLastCell.Col])) then
    if (((ARow = 4) and (FLastCell.Row = 4)) and (ACol > FLastCell.Col)) or
       (((ARow = 5) and (FLastCell.Row = 5)) and (ACol > FLastCell.Col)) or
       (((ARow = 4) and (FLastCell.Row = 5)) and (ACol >= FLastCell.Col)) or
       ((ARow = 5) and (FLastCell.Row = 4)) then}
  if InThisRange(ACol, ARow) then
  begin
    if FMonthObject = moPopupMenu then
      if FCurrMonth < 12 then
        MenuItemClick(FMenu.Items[FCurrMonth])
      else
      begin
        MenuItemClick(FMenu.Items[0]);
        SetNextYear();
      end
    else
    if FMonthObject = moComboBox then
    begin
      if FCurrMonth < 12 then
      begin
        FMonthCombo.ItemIndex := FCurrMonth;
        MonthComboClick(Sender);
      end
      else
      begin
        FMonthCombo.ItemIndex := 0;
        MonthComboClick(Sender);
        SetNextYear();
      end;
    end;
  end
  else
  begin
    OutDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, StrToInt(Trim(FGrid.Cells[ACol, ARow])));
    LastCol := ACol;
    LastRow := ARow;
    FGrid.Hint := Format('%s %s %s', [Trim(FGrid.Cells[ACol, ARow]), GetMonthName, IntToStr(FCurrYear)]);
  end;

{  CanSelect := false;
  FGrid.OnSelectCell := nil;
  FGrid.Row := 0;
  FGrid.Col := FFirstCell;
  FGrid.OnSelectCell := GridSelectCell;}

  SeparateYMD(OutDate, FCurrYear, FCurrMonth, FCurrDay);
  FInDate := OutDate;

  SetYearEditVisibility(false);  
end;

Destructor TCustomSolarCalendar.Destroy;
Begin
  FPriorButton.Destroy;
  FNextButton.Destroy;
  FYear.Destroy;
  FToDay.Destroy;
  FSat.Destroy;
  FSun.Destroy;
  FMon.Destroy;
  FTus.Destroy;
  FThu.Destroy;
  FWed.Destroy;
  FFri.Destroy;
  FCaption.Destroy;
  FGrid.Destroy;
  FCanvas.Free;  

  if FMonthObject <> moNone then
    FMenu.Destroy;
    
  FMonth.Destroy;
  
  Inherited Destroy;
End;

Procedure TCustomSolarCalendar.SetYearButton(Prm_Value: Boolean);
Begin
  If Not (csDesigning In Self.ComponentState) Then
    If Prm_Value = True Then
    Begin
      FPriorButton.Enabled := True;
      FNextButton.Enabled := True;
    End
    Else
    Begin
      FPriorButton.Enabled := False;
      FNextButton.Enabled := False;
    End;

  FEnabledYearButton := Prm_Value;
End;

Function TCustomSolarCalendar.GetOnCellClick: TNotifyEvent;
Begin
  Result := FGrid.OnClick;
End;


Procedure TCustomSolarCalendar.SetOnCellClick(Value: TNotifyEvent);
Begin
  FGrid.OnClick := Value;
End;

Procedure TCustomSolarCalendar.SetDate(out SDate, MDate: String; PKind: Byte);
begin
  if PKind = 0 then
  begin

    DecodeDate(Date(), FCurrYear, FCurrMonth, FCurrDay);
    MDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);

    GregorianToSolar(FCurrYear, FCurrMonth, FCurrDay);
    SDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);

    DecodeDate(Date(), FCurrYear, FCurrMonth, FCurrDay);

    if FDateKind = dkSolar then
    begin
      GregorianToSolar(FCurrYear, FCurrMonth, FCurrDay);
      OutDate := SDate;
    end
    else
    begin
      DecodeDate(Date(), FCurrYear, FCurrMonth, FCurrDay);
      OutDate := MDate;
    end;
  end;

  if PKind = 1 then
  begin
    if Length(Trim(InDate)) <> 0 then
    begin
      SeparateYMD(InDate, FCurrYear, FCurrMonth, FCurrDay);

      if FDateKind = dkSolar then
      begin
        GregorianToSolar(FCurrYear, FCurrMonth, FCurrDay);
        SDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);

        OutDate := SDate;
        InDate := SDate;
      end
      else
      begin
        SolarToGregorian(FCurrYear, FCurrMonth, FCurrDay);
        MDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);

        OutDate := MDate;
        FInDate := MDate;
      end;
    end
  else
  begin
    SeparateYMD(OutDate, FCurrYear, FCurrMonth, FCurrDay);

    if FDateKind = dkSolar then
    begin
      SDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);

      OutDate := SDate;
      FInDate := SDate;
    end
    else
    begin
      if FInDate = '' then
      begin
        DecodeDate(Date(), FCurrYear, FCurrMonth, FCurrDay);
        MDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);
      end
      else
        MDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);

      OutDate := MDate;
      FInDate := MDate;
    end;
  end;
  end;
end;

procedure TCustomSolarCalendar.SetDateKind(const Value: TDateKind);
begin
  if Value <> FDateKind then
  begin
    FDateKind := Value;
    SetDate(FSolar, FMiladi, 1);
  end;

  CreateObjects();

  if FMonthObject = moComboBox then
    SetComboBox();
end;

procedure TCustomSolarCalendar.SetHint();
begin
  if FDateKind = dkSolar then
  begin
    FNextButton.Hint := ST_FANEXTYEARHINT;
    FPriorButton.Hint := ST_FAPRIORYEARHINT;
    FLayout.Hint := ST_ENLAYOUTHINT;
  end
  else
  if FDateKind = dkGregorian then
  begin
    FNextButton.Hint := ST_ENNEXTYEARHINT;
    FPriorButton.Hint := ST_ENPRIORYEARHINT;
    FLayout.Hint := ST_FALAYOUTHINT;
  end;
end;

procedure TCustomSolarCalendar.CreateObjects();
begin
  FPrevMenuItem := FCurrMonth;
  ShowHint := True;

  with FGrid do
  begin
    Parent := Self;
    BorderStyle := bsNone;

    if FDateKind = dkSolar then
      BiDiMode := bdRightToLeft
    else
      BiDiMode := bdLeftToRight;

    ColCount := 7;
    RowCount := 6;
    DefaultColWidth := 45;
    DefaultRowHeight := 20;
    FixedCols := 0;
    FixedRows := 0;
    Width := 322;//322;
    Height := 126;
    Left := 0; //1;
    Top := 60;
    GridLineWidth := 1;
    Options := Options + [goDrawFocusSelected] - [goRangeSelect];
    OnDrawCell := GridDrawCell;
    OnSelectCell := GridSelectCell;
    OnMouseMove := GridMouseMove;
    ShowHint := True;
    ParentShowHint := False;
  end;

  with FCaption do
  begin
    Parent := Self;
    BorderStyle := bsNone;
    BevelInner := bvNone;
    BevelOuter := bvNone;
    Color := FCaptionColor; //clNavy;
    Align := alTop;
    Height := 30;
    ShowHint := False;
    OnClick := CaptionOnClick;    
  end;

  with FLayout do
  begin
    Parent := FCaption;
    Width := 25;
    Height := 16;
    Font.Style := [fsBold];
    Left := 35;
    Top := 8;
    Cursor := crHandPoint;
    OnClick := ClickLayout;
    ShowHint := True;
    Caption := LayoutSet[FDateKind, 1];
  end;

  with FPriorButton do
  begin
    Parent := FCaption;
    Width := 20;
    Height := 16;
    Font.Style := [fsBold];
    Left := 6;
    Top := 8;
    Cursor := crHandPoint;
    OnClick := ClickPriorBtn;
    ShowHint := True;
  end;

  with FNextButton do
  begin
    Parent := FCaption;
    Width := 20;
    Height := 16;
    Font.Style := [fsBold];
    Left := 300;
    Top := 8;
    Cursor := crHandPoint;
    OnClick := ClickNextBtn;
    ShowHint := True;
  end;

  with FYear do
  begin
    Parent := FCaption;
    Font.Color := clWhite;

    if FDateKind = dkSolar then
      Caption := Format(ST_PERSIANYEAR, [IntToStr(FCurrYear)])
    else
      Caption := Format(ST_ENGLISHYEAR, [IntToStr(FCurrYear)]);

    Left := 150;
    Top := 10;
    ShowHint := False;
    OnClick := YearOnClick;
  end;

  with FToDay do
  begin
    Parent := Self;
    Font.Color := clNavy;
    Font.Style := [fsUnderline];
    Cursor := crHandPoint;
    OnClick := ToDayClick;
    SetToDay();
    Left := 10;
    Top := 195;
    ShowHint := False;
    OnMouseEnter := ToDayMouseEnter;
    OnMouseLeave := ToDayMouseLeave;
  end;

  with FSat do
  begin
    Parent := Self;
    Top := 40;
    Left := 285;
    Font.Color := clGreen;
    if FDateKind = dkSolar then
      Caption := DaySet[fDateKind, 2]
    else
      Caption := DaySet[fDateKind, 7];
    ShowHint := False;
  end;

  with FSun do
  begin
    Parent := Self;
    Top := 40;
    Left := 235;
    Font.Color := clGreen;
    if FDateKind = dkSolar then
      Caption := DaySet[fDateKind, 3]
    else
     Caption := DaySet[fDateKind, 6];

    ShowHint := False;
  end;

  with FMon do
  begin
    Parent := Self;
    Top := 40;
    Left := 192;
    Font.Color := clGreen;
    if FDateKind = dkSolar then
      Caption := DaySet[fDateKind, 4]
    else
      Caption := DaySet[fDateKind, 5];
    ShowHint := False;
  end;

  with FTus do
  begin
    Parent := Self;
    Top := 40;
    Left := 143;
    Font.Color := clGreen;
    if FDateKind = dkSolar then
      Caption := DaySet[fDateKind, 5]
    else
      Caption := DaySet[fDateKind, 4];
    ShowHint := False;
  end;

  with FThu do
  begin
    Parent := Self;
    Top := 40;
    Left := 95;
    Font.Color := clGreen;
    if FDateKind = dkSolar then
      Caption := DaySet[fDateKind, 6]
    else
      Caption := DaySet[fDateKind, 3];
    ShowHint := False;
  end;

  with FWed do
  begin
    Parent := Self;
    Top := 40;
    Left := 50;
    Font.Color := clGreen;
    if FDateKind = dkSolar then
      Caption := DaySet[fDateKind, 7]
    else
      Caption := DaySet[fDateKind, 2];
    ShowHint := False;
  end;

  with FFri do
  begin
    Parent := Self;
    Top := 40;
    Left := 10 ;
    Font.Color := CL_VACATIONDAYCOLOR;//clRed;
    Caption := DaySet[fDateKind, 1];
    ShowHint := False;
  end;

  with FMonth do
  begin
    Parent := Self;
    Top := 195;
    Left := 260;
    Caption := MonthSet[FDateKind, FCurrMonth];
    Font.Color := clNavy;
    ShowHint := False;

    if FMonthObject = moPopupMenu then
      FMonth.Visible := True
    else
      FMonth.Visible := False;
  end;

  with FYearUpDown do
  begin
    Parent := FCaption;
    Associate := FYearEdit;
    Height := 17;
    Width := 13;
    Max := 9999;
    Min := 1340;
    Left := 150;
    Top := 7;
    ShowHint := False;
    Thousands := false;
    Visible := false;
    OnChangingEx := YearUpDownChange;
  end;

  with FYearEdit do
  begin
    Parent := FCaption;
    Text := IntToStr(FCurrYear);
    Width := 35 ;
    Height := 17;
    Left := 150;
    Top := 7;
    ShowHint := False;
    BevelInner := bvNone;
    BevelKind := bkFlat;
    BevelOuter := bvLowered;
    BorderStyle := bsNone;
    MaxLength := 4;
    Visible := false;
    OnKeyPress := YearEditKeyPress;
    OnContextPopup := YearEditContextPopup;    
  end;

  if FDateKind = dkSolar then
    if FMonthObject = moComboBox then
      FMonthCombo.BiDiMode := bdRightToLeft
    else
  else
  begin
    FToDay.Left := Self.Width - FToDay.Width - 2;
    FMonth.BiDiMode := bdLeftToRight;
    FMonth.Left := 2;
  end;

  FPriorButton.Glyph.LoadFromResourceName(HInstance, 'PRIORYEAR');
  FNextButton.Glyph.LoadFromResourceName(HInstance, 'NEXTYEAR');

  if FMonthObject <> moNone then
    MonthSetting();

  MonthChanging();
  SetHint();  
end;

procedure TCustomSolarCalendar.SetDisableCellColor(const Value: TColor);
begin
  FDisableCellColor := Value;
  RecreateWnd;
end;

procedure TCustomSolarCalendar.SetFirstRowColor(const Value: TColor);
begin
  FFirstRowColor := Value;
  RecreateWnd;
end;

procedure TCustomSolarCalendar.SetSecondRowColor(const Value: TColor);
begin
  FSecondRowColor := Value;
  RecreateWnd;
end;

procedure TCustomSolarCalendar.SetMonthPosition( const Value: TMonthPosition);
begin
  FMonthPosition := Value;
end;

procedure TCustomSolarCalendar.SetDefaultSetting(const Value: TUserInterface);
begin
  if FUserInterFace <> Value  then
  begin
    FUserInterFace := Value;
    RecreateWnd;
  end;
end;

procedure TCustomSolarCalendar.SetCellFontColor(const Value: TColor);
begin
  FCellFontColor := Value;
  RecreateWnd;
end;

procedure TCustomSolarCalendar.SetSelectedCellFontColor(const Value: TColor);
begin
  FSelectedCellFontColor := Value;
end;

procedure TCustomSolarCalendar.SetMonthObject(const Value: TMonthObject);
begin
  if FMonthObject <> Value then
  begin
//    ClearGridCells();

    if FMonthObject = moComboBox then
      FreeAndNil(FMonthCombo);

    FMonthObject := Value;

    FillPrevMonthDayCells();
    FillNextMonthDayCells();

    case FMonthObject of
      moComboBox :
        begin
          FGrid.PopupMenu := Nil;
          FMonth.Visible := False;

          FMonthCombo := TComboBox.Create(Self);

          SetComboBox();
        end;

      moPopupMenu :
        begin
          FGrid.PopupMenu := FMenu;
          FMonth.Visible := True;        
        end;
      moNone :
        begin
          FGrid.PopupMenu := nil;
          FMonth.Visible := True;

          ClearGridNextMonthCells();
          ClearGridPrevMonthCells();
        end;  
    end;
  end;
end;


Procedure TCustomSolarCalendar.MonthComboClick(Sender: TObject);
begin
  FPrevMenuItem := FMonthCombo.ItemIndex + 1;

  if (FCurrMonth = 6) and (FCurrDay = 31) then
    Inc(FCurrDay);

  FCurrMonth := FMonthCombo.ItemIndex + 1;
  OutDate := ConcatenateDate(FCurrMonth, FCurrYear, FCurrMonth, FCurrDay);
  FInDate := OutDate; //1384-03-15    
  MonthChanging();
end;

Procedure TCustomSolarCalendar.SetComboBox();
var
  iCounter: Byte;
Begin
  with FMonthCombo do
  begin
    Parent := Self;
    ParentBiDiMode := false;
    Left := Self.Width - Width - 2;
    Top := 191;
    Width := 100;
    Style := csDropDownList;

    DropDownCount := 12;
    OnChange := Nil;
    begin
      items.Clear;
      for iCounter := 1 to 12 do
        Items.Add(MonthSet[fDateKind, iCounter]);

      ItemIndex := FPrevMenuItem - 1;
    end;

  OnChange := MonthComboClick;
  Visible := Boolean(Ord(FMonthObject));
  end;

  if FDateKind = dkSolar then
  begin
    FMonth.BiDiMode := bdRightToLeft;
    FMonthCombo.BiDiMode := bdRightToLeft;
    FMonthCombo.Left := 222;
  end
  else
  begin
    FMonthCombo.Left := 2;
    FMonthCombo.BiDiMode := bdLeftToRight;
  end;
end;

procedure TCustomSolarCalendar.SetInDate(const Value: String);
begin
  if Length(Trim(Value)) <> 0 then
  begin
    if FDateKind = dkGregorian then
    begin
      DecodeDate(StrToDate(Value), FCurrYear, FCurrMonth, FCurrDay);

      if not CheckInputDate(FCurrYear, FCurrMonth, FCurrDay) then
        SeparateYMD(OutDate, FCurrYear, FCurrMonth, FCurrDay)
      else
        FInDate := Value;

      FYear.Caption := Format(ST_ENGLISHYEAR, [IntToStr(FCurrYear)]);
    end
    else
    begin
      SeparateYMD(Value, FCurrYear, FCurrMonth, FCurrDay);

      if not CheckInputDate(FCurrYear, FCurrMonth, FCurrDay) then
        SeparateYMD(OutDate, FCurrYear, FCurrMonth, FCurrDay)
      else
        FInDate := Value;

      FYear.Caption := Format(ST_PERSIANYEAR, [IntToStr(FCurrYear)]);
    end;

    FPrevMenuItem := FCurrMonth;

    if FMonthObject = moPopupMenu then
    begin
      FMenu.Items[FPrevMenuItem - 1].Checked := True;
      FMenu.Items[FPrevMenuItem - 1].RadioItem := True;
    end
    else
    if FMonthObject = moComboBox then
      FMonthCombo.ItemIndex := FPrevMenuItem - 1;

    OutDate := InDate;  
    MonthChanging();
  end;
end;

function TCustomSolarCalendar.CheckInputDate(Year, Month, Day: word): boolean;
begin
  Result := true;
  if (FCurrYear = 0) or (FCurrMonth = 0) or (FCurrDay = 0) then
  begin

    if FDateKind = dkSolar then
      ShowMessage(ERR_INVALIDDATEFA)
    else
      ShowMessage(ERR_INVALIDDATEEN);
      
    Result := false;  
  end;
end;

procedure TCustomSolarCalendar.ClickLayout(Sender: TObject);
begin
  if FDateKind = dkSolar then
  begin
    DateKind := dkGregorian;
    FYearUpDown.Associate := FYearEdit;
  end
  else
  begin
    DateKind := dkSolar;
    FYearUpDown.Associate := FYearEdit;
  end;

  FLayout.Caption := LayoutSet[FDateKind, 1];

  SetYearEditVisibility(false);

  if Assigned(FOnLayoutClick) then
    FOnLayoutClick(Self);
end;

{ TSolarDatePicker }
constructor TSolarDatePicker.Create(AOwner: TComponent);
begin
  inherited;
  FCurrYear := 0;
  FCurrMonth := 0;
  FCurrDay := 0;
  FShowCellInColor := true;
  FGlyph := gtCalendar;
  FShowToDay := true;
  FDividerStr := '/';
  FDivider := dSlash;
  FShowDefaultDate := false;
  FVisibleLayoutSwitch := true;  
end;

destructor TSolarDatePicker.Destroy;
begin
  inherited;
end;

procedure TSolarDatePicker.DoButtonClick;
begin
  if Assigned(FOnButtonClick) then
    FOnButtonClick(Self);

  if not ReadOnly then
    ShowPopup;
end;

procedure TSolarDatePicker.CellDblClick4Close(Sender: TObject);
begin
  Text := FCustomSolarCalendar.OutDate;
  FPopupForm.Close;   //popup window
  FDateKind := FCustomSolarCalendar.FDateKind;

  FCustomSolarCalendar.Free;

  SeparateYMD(Text, FCurrYear, FCurrMonth, FCurrDay);
  if not IsDateValid(DateKind, FCurrYear, FCurrMonth, FCurrDay) then
    ShowInvalidDateMsg();
end;

procedure TSolarDatePicker.ShowPopup;
const
  iHeight = 215;
  iWidth = 325;
var
  Rect: TRect;
  ScreenWidth, ScreenHeight: Integer;
begin
  HidePopupForm;

  FPopupForm := TPopupForm.Create(Self);
  FPopupForm.Position := poDesigned;

//  DoBeforeShow; // for handling BeforeShow event

  ScreenWidth := Screen.Width;
  ScreenHeight := Screen.Height;
  Rect :=  Self.BoundsRect;
  MapWindowPoints(Self.Parent.Handle, 0, Rect, 2);

  if Self.BiDiMode = bdLeftToRight then
  begin
    if Rect.Left + iWidth > ScreenWidth then
      Rect.Left := (ScreenWidth - iWidth) - (ScreenWidth - Rect.Right);

    if Rect.Left < 0 then
      Rect.Left := 0;

    Rect.Right := Rect.Left + iWidth;

    Rect.Top := Rect.Bottom;
    Inc(Rect.Bottom, iHeight);

    if Rect.Bottom > ScreenHeight then
    begin
      Rect.Bottom := Rect.Top - Self.Height;
      Dec(Rect.Top, iHeight + Self.Height);
    end;
  end
  else
  if Self.BiDiMode = bdRightToLeft then
  begin
    Rect.Left := (Rect.Left - iWidth) + Self.Width;

    if Rect.Left + iWidth > ScreenWidth then
      Rect.Left := (ScreenWidth - iWidth) - (ScreenWidth - Rect.Right);

    if Rect.Left < 0 then
      Rect.Left := Self.Parent.Left + Self.Left + 5; //!

    Rect.Right := Rect.Left + iWidth;

    if Rect.Right > ScreenWidth then
      Rect.Left := ScreenWidth - iWidth;

    Rect.Top := Rect.Bottom;
    Inc(Rect.Bottom, iHeight);

    if Rect.Bottom > ScreenHeight then
    begin
      Rect.Bottom := Rect.Top - Self.Height;
      Dec(Rect.Top, iHeight + Self.Height);
    end;
  end;

  FPopupForm.BoundsRect := Rect;
  FPopupForm.HookForm;

  FCustomSolarCalendar := TCustomSolarCalendar.Create(Self);
  FCustomSolarCalendar.Parent := FPopupForm;
  FCustomSolarCalendar.MonthObject := moComboBox;
  FCustomSolarCalendar.FGrid.OnDblClick := CellDblClick4Close;
  FCustomSolarCalendar.DateKind := DateKind;  //87-03-16
  FCustomSolarCalendar.ShowToDay := FShowToDay;
  FCustomSolarCalendar.ShowCellInColor := FShowCellInColor;
  FCustomSolarCalendar.MonthObject := FMonthObject;
  FCustomSolarCalendar.VisibleLayoutSwitch := FVisibleLayoutSwitch;  

  try
    FCustomSolarCalendar.InDate := Trim(Text);
    FCustomSolarCalendar.FLayout.Visible := FVisibleLayoutSwitch;

{    if DateKind = dkGregorian then
      FCustomSolarCalendar.SetDateKind(DateKind);} //87-03-16

    if Assigned(FOnLayoutClick) then
      FCustomSolarCalendar.FOnLayoutClick := FOnLayoutClick;

    if Assigned(FOnNextClick) then
      FCustomSolarCalendar.FOnNextClick := FOnNextClick;

    if Assigned(FOnPrevClick) then
      FCustomSolarCalendar.FOnPrevClick := FOnPrevClick;

    FPopupForm.Show;
  except
    FreeAndNil(FCustomSolarCalendar);
    ShowInvalidDateMsg();

//    ShowMessage(ERR_INVALIDDATEFA);  //87-03-14
    //Self.SetFocus;
  end;

  // this part was so hard
end;

procedure TSolarDatePicker.ShowInvalidDateMsg();
begin
  if DateKind = dkSolar then
    if Length(Trim(PersianInvalidDateMessage)) = 0 then
      ShowMessage(ERR_INVALIDDATEFA)
    else
      ShowMessage(PersianInvalidDateMessage)
  else
  if DateKind = dkGregorian then
    if Length(Trim(EnglishInvalidDateMessage)) = 0 then
      ShowMessage(ERR_INVALIDDATEEN)
    else
      ShowMessage(EnglishInvalidDateMessage);
end;

function TSolarDatePicker.GetDay: integer;
begin
  ResetYMD(Text, FCurrYear, FCurrMonth, FCurrDay);
  if FCurrDay > 0 then
    Result := FCurrDay
  else
    Result := 0;
end;

function TSolarDatePicker.GetMonth: integer;
begin
  ResetYMD(Text, FCurrYear, FCurrMonth, FCurrDay);
  if FCurrMonth > 0 then
    Result := FCurrMonth
  else
    Result := 0;
end;

function TSolarDatePicker.GetYear: integer;
begin
  ResetYMD(Text, FCurrYear, FCurrMonth, FCurrDay);
  if FCurrYear > 0 then
    Result := FCurrYear
  else
    Result := 0
end;

function TSolarDatePicker.GetDayName: string;
var
  Year,
  Month,
  Day: word;
  iCol: integer;
begin
  if Length(Trim(Text)) <> 0 then
    if FDateKind = dkSolar then
    begin
      Year := FCurrYear;
      Month := FCurrMonth;
      Day := FCurrDay;

      SolarToGregorian(Year, Month, Day);
      iCol := DayOfWeek(EncodeDate(Year, Month, Day));

      if iCol < 6 then
        Result := DaySet[dkSolar, iCol + 2]
      else
        Result := DaySet[dkSolar, iCol - 5];
    end
    else
    begin
      iCol := DayOfWeek(EncodeDate(FCurrYear, FCurrMonth, FCurrDay));
      Result := DaySet[dkGregorian , iCol];
    end;
end;

function TSolarDatePicker.GetMonthName: string;
begin
  if Length(Trim(Text)) <> 0 then
    if FDateKind = dkSolar then
      Result := MonthSet[dkSolar, FCurrMonth]
    else
      Result := MonthSet[dkGregorian , FCurrMonth];
end;

procedure TSolarDatePicker.SetDivider(const Value: TDivider);
begin
  if FDivider <> Value then
  begin
    FDivider := Value;

    case Value of
      dSlash : FDividerStr := '/';
      dBackSlash : FDividerStr := '\';
      dLine : FDividerStr := '-';
      dUnderScore : FDividerStr := '_';
      dDot : FDividerStr := '.';
      dComma : FDividerStr := ',';
    end;  
  end;
end;

procedure TSolarDatePicker.CMExit(var Message: TCMExit);
var
  Year, Month, Day: word;
  bRaisedError: boolean;
begin
  bRaisedError := false;

  if FCheckInputOnExit then
    if Length(Trim(Text)) <> 0 then
    begin
      try
        SeparateYMD(Text, Year, Month, Day);

        if not IsDateValid(DateKind, Year, Month, Day) then
        begin
          ShowInvalidDateMsg();
          Self.SetFocus;
          bRaisedError := true;
        end;

      except
        ShowInvalidDateMsg();
        Self.SetFocus;
        bRaisedError := true;        
      end;
    end;

  if not bRaisedError then 
    inherited;    
end;

procedure TSolarDatePicker.SetGlyph(const Value: TGlyphType);
begin
  if  FGlyph <> Value then
  begin
    FGlyph := Value;

    case Value of
      gtBlackArrowDown: CBBmp.LoadFromResourceName(HInstance, 'SCROLLDOWN');
      gtCalendar: CBBmp.LoadFromResourceName(HInstance, 'OPENCAL_1');
      gtBlueArrowDown: CBBmp.LoadFromResourceName(HInstance, 'OPENCAL_2');
      gtGreenArrowDown: CBBmp.LoadFromResourceName(HInstance, 'OPENCAL_3');
    end;

    FButton.Glyph := CBBmp;      
  end;  
end;

procedure TSolarDatePicker.WMKeyDown(var Message: TWMKey);
var
  ShiftState: TShiftState;
  Year, Month, Day: word;
begin
  inherited;
  ShiftState := KeyDataToShiftState(Message.KeyData);

  if FVisibleLayoutSwitch then
  begin
    if (ssCtrl in ShiftState) then
      if Message.CharCode = vk_return then
        if Length(Trim(Text)) <> 0 then
        begin
          try
            SeparateYMD(Text, Year, Month, Day);
            IsDateValid(DateKind, Year, Month, Day);
          except
            ShowInvalidDateMsg();
            Self.SetFocus;
            Exit;
          end;

          if FDateKind = dkSolar then
          begin
            SolarToGregorian(Year, Month, Day);
            Text := ConcatenateDate(Month, Year, Month, Day);
            DateKind := dkGregorian;
          end
          else
          if FDateKind = dkGregorian then
          begin
            GregorianToSolar(Year, Month, Day);
            Text := ConcatenateDate(Month, Year, Month, Day);
            DateKind := dkSolar;
          end
      end;
  end;

  if (ssCtrl in ShiftState) then
    if Message.CharCode = vk_down then
      DoButtonClick;
end;

procedure TSolarDatePicker.SetShowDefaultDate(const Value: boolean);
var
  Year, Month, Day: word;
begin
  if FShowDefaultDate <> Value then
  begin
    FShowDefaultDate := Value;

    if value = True then
    begin
      DecodeDate(Now(), Year, Month, Day);

      if FDateKind = dkSolar then
      begin
        GregorianToSolar(Year, Month, Day);
        Text := ConcatenateDate(Month, Year, Month, Day);
      end
      else
      if FDateKind = dkGregorian then
        Text := ConcatenateDate(Month, Year, Month, Day);
    end
    else
     Text := ''; 
  end;
end;


{ TSolarMonthCalendar }
constructor TSolarMonthCalendar.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TSolarMonthCalendar.Destroy;
begin
  inherited;
end;

procedure TCustomSolarCalendar.SetToDay;
Var
  LocalYear, LocalMonth, LocalDay: Word;
Begin
  DecodeDate(Date(), LocalYear, LocalMonth, LocalDay);

  if FDateKind = dkSolar then
  begin
    GregorianToSolar(LocalYear, LocalMonth, LocalDay);
    FToDay.Caption := Format(ST_PERSIANTODAY, [ConcatenateDate(FCurrMonth, LocalYear, LocalMonth, LocalDay)]);
  end
  else
    FToDay.Caption := Format(ST_ENGLISHTODAY, [ConcatenateDate(FCurrMonth, LocalYear, LocalMonth, LocalDay)]);
End;

function TSolarMonthCalendar.GetDay: integer;
begin
  ResetYMD(Text, FCurrYear, FCurrMonth, FCurrDay);
  if FCurrDay > 0 then
    Result := FCurrDay
  else
    Result := 0;
end;

function TSolarMonthCalendar.GetMonth: integer;
begin
  ResetYMD(Text, FCurrYear, FCurrMonth, FCurrDay);
  if FCurrMonth > 0 then
    Result := FCurrMonth
  else
    Result := 0;
end;

function TSolarMonthCalendar.GetYear: integer;
begin
  if FCurrYear > 0 then
    Result := FCurrYear
  else
    Result := 0;
end;


{ TPopupForm }

constructor TPopupForm.Create(AOwner: TSolarDatePicker);
begin
  inherited CreateNew(Application);
  FOwner := AOwner;
  KeyPreview := True;
  OnKeyDown := FormKeyDown;
end;

procedure TPopupForm.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := WS_POPUP or WS_CLIPSIBLINGS or WS_VISIBLE;// or WS_BORDER;
  Params.ExStyle := WS_EX_TOPMOST or WS_EX_TOOLWINDOW;
  Params.WndParent := Application.Handle;
  BorderStyle := bsNone;
//  Color := $00BFBFBF;
end;

destructor TPopupForm.Destroy;
begin
  UnhookForm;
  inherited;
end;

procedure TPopupForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    if ActiveControl.ClassType <> TEdit then
      Close //close form
    else
  else
  if Key = vk_return then
  begin
  end;
end;

procedure TPopupForm.HookForm;
var
  lLongValue: LongInt;
begin
  FHookedForm := GetParentForm(FOwner);

  if not Assigned(FHookedForm) then
    Exit;

  lLongValue := GetWindowLong(FHookedForm.Handle, GWL_WNDPROC);

  if lLongValue = LongInt(@HookFormProc) then
    Exit;
    
  FOrgFormProc := Pointer(lLongValue);
  SetWindowLong(FHookedForm.Handle, GWL_WNDPROC, LongInt(@HookFormProc));
end;

procedure TPopupForm.UnhookForm;
begin
  if not Assigned(FHookedForm) then
    Exit;

  if not Assigned(FOrgFormProc) then
    Exit;
    
  SetWindowLong(FHookedForm.Handle, GWL_WNDPROC, LongInt(FOrgFormProc));
  FOrgFormProc := nil;
  FHookedForm := nil;
end;

procedure TCustomSolarCalendar.SetBackgroundColor(const Value: TColor);
begin
  if FBackgroundColor <> Value then
  begin
    FBackgroundColor := Value;

    if FUserInterFace = uiCustom then
      Color := Value;
  end;
end;

procedure TCustomSolarCalendar.SetCaptionColor(const Value: TColor);
begin
  if FCaptionColor <> Value then
  begin
    FCaptionColor := Value;

    if FUserInterFace = uiCustom then
      FCaption.Color := Value;
  end;
end;

procedure TCustomButtonEdit.SetAbout(const Value: String);
begin
  FAbout := ST_ABOUTSTR;
end;

procedure TCustomSolarCalendar.SetAbout(const Value: String);
begin
  FAbout := ST_ABOUTSTR;
end;

function TCustomSolarCalendar.GetPrevMonthDays: integer;
begin
  if FCurrMonth = 1 then
    Result := DaysOfMonths[FDateKind, 12]
  else
    Result := DaysOfMonths[FDateKind, FCurrMonth - 1];
end;

procedure TCustomSolarCalendar.SetShowToDay(const Value: Boolean);
begin
  if FShowToDay <> Value then
  begin
    FShowToDay := Value;
    FToDay.Visible := Value;
  end;
end;

function TCustomSolarCalendar.GetMonthName: string;
begin
  if FDateKind = dkSolar then
    Result := MonthSet[dkSolar, FCurrMonth]
  else
    Result := MonthSet[dkGregorian , FCurrMonth];
end;

function TCustomSolarCalendar.GetDayName: string;
begin
  if FDateKind = dkSolar then
    if FGrid.Col < 6 then
      Result := DaySet[dkSolar, FGrid.Col + 2]
    else
      Result := DaySet[dkSolar, 1]
  else
    Result := DaySet[dkGregorian , FGrid.Col + 1];
end;

function TCustomSolarCalendar.GetToDay: string;
Var
  LocalYear, LocalMonth, LocalDay: Word;
Begin
  DecodeDate(Date(), LocalYear, LocalMonth, LocalDay);

  if FDateKind = dkSolar then
  begin
    GregorianToSolar(LocalYear, LocalMonth, LocalDay);
    Result := ConcatenateDate(FCurrMonth, LocalYear, LocalMonth, LocalDay);
  end
  else
    Result := ConcatenateDate(FCurrMonth, LocalYear, LocalMonth, LocalDay);
end;

procedure TCustomSolarCalendar.ToDayClick(Sender: TObject);
begin
  InDate := GetToDay;

  SetYearEditVisibility(false);
end;


procedure TCustomSolarCalendar.SetYearEditVisibility(value: boolean);
begin
  FYearUpDown.Visible := value;
  FYearEdit.Visible := value;
end;

procedure TCustomSolarCalendar.YearOnClick(Sender: TObject);
begin
  if FEnabledYearButton then
  begin
    SetYearEditVisibility(true);
    FTempYear := FCurrYear;
    FYearEdit.Text := IntToStr(FCurrYear);
    FYearEdit.SetFocus;
    FYearEdit.SelLength := 0;
  end;  
end;

procedure TCustomSolarCalendar.YearUpDownChange(Sender: TObject;
  var AllowChange: Boolean; NewValue: Smallint;
  Direction: TUpDownDirection);
begin
  if NewValue < FYearUpDown.Position then
  begin
    SetPriorYear();

    if Assigned(FOnPrevClick) then
      FOnPrevClick(Self);
  end
  else
  if NewValue > FYearUpDown.Position then
  begin
    SetNextYear();

    if Assigned(FOnNextClick) then
      FOnNextClick(Self);
  end;
end;

procedure TCustomSolarCalendar.YearEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  SystemParametersInfo(SPI_SETBEEP, Word(false), nil, 0);
  
  if Key = #27 then
  begin
    SetYear(FTempYear);
    SetYearEditVisibility(false);
  end
  else
  if key = #13 then
  begin
    if ((FDateKind = dkSolar) and (FYearUpDown.Position > 1340)) or
       ((FDateKind = dkGregorian) and (FYearUpDown.Position > 1899)) then
      SetYear(FYearUpDown.Position)
    else
      SystemParametersInfo(SPI_SETBEEP, Word(true), nil, 0);

    SetYearEditVisibility(false);
  end
  else
  if not(Key in ['0'..'9', #8, #38]) then
    key := #0;
end;

procedure TCustomSolarCalendar.CaptionOnClick(Sender: TObject);
begin
  SetYearEditVisibility(false);
end;

procedure TCustomSolarCalendar.YearEditContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := true;
end;

procedure TCustomSolarCalendar.ToDayMouseEnter(Sender: TObject);
begin
  FToDay.Font.Color := clBlue;
end;

procedure TCustomSolarCalendar.ToDayMouseLeave(Sender: TObject);
begin
  FToDay.Font.Color := CL_CAPTIONCOLOR;
end;

function TCustomSolarCalendar.GetCanvas: TCanvas;
begin
  Result := FCanvas;
end;

procedure TCustomSolarCalendar.SetShowCellInColor(const Value: boolean);
begin
  if FShowCellInColor <> Value then
  begin
    FShowCellInColor := Value;
    Self.Repaint;  
  end;
end;

procedure TCustomSolarCalendar.GridMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  ACol, ARow : Integer;  
begin
  FGrid.MouseToCell(x, y, ACol, ARow);

  if (ACol <> -1) and (ARow <> -1) then 
    if FGrid.Cells[ACol, ARow] = IntToStr(FCurrDay) then
      FGrid.Hint := Format('%s %s %s', [Trim(FGrid.Cells[ACol, ARow]), GetMonthName, IntToStr(FCurrYear)])
    else
      FGrid.Hint := '';
end;

procedure TCustomSolarCalendar.SetVisibleLayoutSwitch(
  const Value: Boolean);
begin
  if FVisibleLayoutSwitch <> Value then
  begin
    FVisibleLayoutSwitch := Value;

    FLayout.Visible := Value;
  end;
end;

initialization
  CBBmp := TBitmap.Create;
  try
    CBBmp.LoadFromResourceName(HInstance, 'OPENCAL_1');

//    CBBmp.LoadFromResourceName(HInstance, 'SCROLLDOWN');
  except
  end;

finalization
  CBBmp.Free;

end.
