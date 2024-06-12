unit UCalenderView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, dbcgrids, Mask, DBCtrls, DB, ADODB, ExtCtrls,
 Buttons, DBGrids, CheckLst, Menus, ComCtrls, Tabs, ActnList,
  ToolWin, ActnMan, ActnCtrls, XPStyleActnCtrls, xpBitBtn, BaseUnit,
  ExtActns;

type
  TFrViewByCalender = class(TMBaseForm)
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    ListBox7: TListBox;
    ListBox8: TListBox;
    ListBox9: TListBox;
    ListBox10: TListBox;
    ListBox11: TListBox;
    ListBox12: TListBox;
    ListBox13: TListBox;
    ListBox14: TListBox;
    ListBox15: TListBox;
    ListBox16: TListBox;
    ListBox17: TListBox;
    ListBox18: TListBox;
    ListBox19: TListBox;
    ListBox20: TListBox;
    ListBox21: TListBox;
    ListBox22: TListBox;
    ListBox23: TListBox;
    ListBox24: TListBox;
    ListBox25: TListBox;
    ListBox26: TListBox;
    ListBox27: TListBox;
    ListBox28: TListBox;
    ListBox29: TListBox;
    ListBox30: TListBox;
    ListBox31: TListBox;
    ListBox32: TListBox;
    ListBox33: TListBox;
    ListBox34: TListBox;
    ListBox35: TListBox;
    ListBox36: TListBox;
    ListBox37: TListBox;
    Button1: TBitBtn;
    Hollydate: TADODataSet;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    _year: TEdit;
function day(y,m,d:word):word;
Function ShamsiLeapYear(y: word):byte;
    procedure FormCreate(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure JournalSmallSearchExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBoxDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    journalCode:integer;
    _month:byte;
   procedure calender;
  end;

var
  FrViewByCalender: TFrViewByCalender;
  currentListBoxTag:byte;
  currentListBoxname,currentday,CurrentJourNo:string;
implementation

uses  dmu, MainU;

{$R *.dfm}

function TFrViewByCalender.day(y,m,d:word):word;
 var i,dd:word;
 begin
 dd:=0;
  if y>1000 then y:=y-1300;
  for i:=0 to y-1 do
   dd:=dd+1+ShamsiLeapYear(1300+i);
   dd:=(dd+(m-1)*31-(m div 7)*(m-7)+d+1) mod 7;
   day:=dd;
 end;
 function DStr(i:byte):string;
  begin
    if i>9 then Result:=IntToStr(i)
    else Result:='0'+IntToStr(i)
  end;

Function TFrViewByCalender.ShamsiLeapYear(y: word):byte;
var s: byte;
begin
   s:=(y-22) mod 33;
   if (s<>32) and (s mod 4 = 0) then ShamsiLeapYear:=1 else ShamsiLeapYear:=0;
end;

procedure TFrViewByCalender.calender;
var startday,dayinweek,_m:byte;
j:integer;c:tcomponent;
dayinweeksearch :string;
L:TListBox;//GiveHave:string;
S:TStaticText;
Tedad:Integer;
begin
startday :=day(strtoint(_Year.text),_month,1);
  for j:=1 to ComponentCount-1 do
    begin
    c:=Components[j];
    if c.ClassType=TListBox then
      begin
      L:=TListBox(c);
      L.Enabled:=true;
      L.Color:=clMoneyGreen;
      L.Items.Clear
      end
    else if c.ClassType=TStaticText then
      begin
      s:=TStaticText(c);
      s.Color:=$00C08000
      end
    end;

  for j:=1 to ComponentCount-1 do
    begin
    c:=Components[j];
    if c.ClassType=TStaticText then
       begin
       s:=TStaticText(c);
       if (s.Tag mod 100) = _month then
          s.Color:=$008000FF
       end
    else
    if c.ClassType=TListBox then
      begin
      L:=TListBox(c);
      dayinweek:=((L.Tag mod 10)-1)*7+((L.Tag mod 100) div 10)-startday+1;
      if _month>6 then _m:=30 else _m:=31;
      if (dayinweek>0)and(dayinweek<=_m) then
         begin
           L.items.Add(inttostr(dayinweek));
           dayinweeksearch := inttostr(dayinweek);
           if dayinweek<10 then dayinweeksearch := '0'+inttostr(dayinweek);
           if ((l.Tag div 10)=6) or Hollydate.Locate('date',_year.Text+'/'+DStr(_month)+'/'+dayinweeksearch,[]) then
              begin
                l.Font.Color:=clRed;
                l.Font.Style:=l.Font.Style+[fsbold];
                l.Color:=clGray;
              end
            else
             begin
              l.Font.Color:=clBlack;
              l.Font.Style:=l.Font.Style-[fsbold];
             end;

            with dm.Select_FollowUP_By_Date do
             begin
              filter:='Tododate='''+_year.Text+'/'+DStr(_month)+'/'+dayinweeksearch+'''';
              Filtered:=true;
              Tedad:=dm.Select_FollowUP_By_Date.RecordCount;
              L.items.Add('йзого:'+IntToStr(Tedad));
              while not eof do
              begin
                 L.items.Add(dm.Select_FollowUP_By_DateCompanyName.AsString);
                 L.Color:=clSkyBlue;
                 next;
              end
             end 
         end
      else
        begin
        L.Enabled:=false;
        L.Color:=clBtnFace//$CCCCCCFF
        end
      end;
    end;
end;

procedure TFrViewByCalender.FormCreate(Sender: TObject);
begin

_month:=StrToInt(copy(_today,6,2));
_year.Text:=copy(_today,1,4);
Hollydate.Open;
calender
end;

procedure TFrViewByCalender.StaticText1Click(Sender: TObject);
begin
_month:=(Sender as TStaticText).Tag mod 100;
MainForm.BDate.Text:=_year.Text+'/'+DStr(_month)+'/01';
MainForm.Edate.Text:=_year.Text+'/'+DStr(_month)+'/30';
//MainForm.Button24Click(nil);
calender
end;


procedure TFrViewByCalender.Action1Execute(Sender: TObject);
begin
_year.Text:=inttostr(strtoint(_year.Text)+(Sender as TAction).Tag);
calender
end;

procedure TFrViewByCalender.Action4Execute(Sender: TObject);
begin
if _month=12 then
  begin
  _year.Text:=inttostr(strtoint(_year.Text)+1);
  _month:=1
  end
else
  _month:=_month+1;
calender
end;

procedure TFrViewByCalender.Action2Execute(Sender: TObject);
begin
 if _month=1 then
  begin
  _year.Text:=inttostr(strtoint(_year.Text)-1);
  _month:=12
  end
else
  _month:=_month-1;
calender
end;


procedure TFrViewByCalender.JournalSmallSearchExecute(Sender: TObject);
begin
  inherited;
calender;
end;

procedure TFrViewByCalender.RadioGroup1Click(Sender: TObject);
begin
  inherited;
 calender;

end;

procedure TFrViewByCalender.Button1Click(Sender: TObject);
begin
  inherited;
  Dm.Select_FollowUP_By_Date.Filter:='';
  close;
end;

procedure TFrViewByCalender.ListBoxDblClick(Sender: TObject);
begin
  if TListBox(sender).Height<300 then
   begin
     TListBox(sender).Top:=30;
     TListBox(sender).Height:=600;
     TListBox(Sender).BringToFront;
    end
   else
    begin
     TListBox(sender).Top:=30+89*((TListBox(sender).Tag mod 10)-1);
     TListBox(sender).Height:=86;
     TListBox(Sender).BringToFront;
    end;

end;

end.
