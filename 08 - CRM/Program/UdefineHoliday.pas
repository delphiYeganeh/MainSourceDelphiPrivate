unit UdefineHoliday;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, SolarCalendarPackage, ExtActns, ActnList, DB, ExtCtrls,
  StdCtrls, Buttons, Menus,ADODB,YshamsiDate, xcalPlannerCal, xcalClass,
  xcalPersian, xcalEvents, xcalAstroEvents, xmldom, Xmlxform, XMLIntf,
  DBClient, msxmldom, XMLDoc;

type
  TfrDefineHoliday = class(TMBaseForm)
    Panel1: TPanel;
    btnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    PersianCalendar: TPersianCalendar;
    xlpCalendar: TXCalPlannerCalendar;
    IranEventsPersian: TXCalendarEvents;
    IranAggregateEvents: TXCalendarAggregateEvents;
    XMLDocument1: TXMLDocument;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure xlpCalendarDaySelect(Sender: TObject;
      SelDate: TDateTime);
  private
    qryHoliday : TADOQuery;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDefineHoliday: TfrDefineHoliday;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TfrDefineHoliday.FormShow(Sender: TObject);
var Path :String;
begin
  inherited;
  Path := ExtractFilePath(Application.ExeName); 
  qryHoliday := TADOQuery.Create(nil);
  with   qryHoliday do
  begin
    Connection := dm.YeganehConnection;
    SQL.Text := 'SElect * from CalendarHoliday';
    Open;
    DSForm.DataSet := qryHoliday;
  end;
  IranEventsPersian.LoadFromFile(Path + 'IranEventsPersian.xml');
  xlpCalendar.SetDate(StrToInt(Copy(_Today,9,2)),StrToInt(Copy(_Today,6,2)),StrToInt(Copy(_Today,1,4)));
end;

procedure TfrDefineHoliday.xlpCalendarDaySelect(Sender: TObject;
  SelDate: TDateTime);
  var Dt :String;
begin
  inherited;

if not      qryHoliday.Locate('HolidayDate',xlpCalendar.DatesAsText,[]) then
begin
  with qryHoliday do
  begin
    Insert;
    FieldByName('HolidayDate').Value := xlpCalendar.DatesAsText;
    Post;
  end;
end else
      if  qryHoliday.Locate('HolidayDate',xlpCalendar.DatesAsText,[]) then
        qryHoliday.Delete;

end;


end.
