unit AddTimeSheetU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DBCtrls, Mask, ExtActns, ActnList, DB, Menus,
  ExtCtrls;

type
  TFrAddTimeSheet = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    status: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddTimeSheet: TFrAddTimeSheet;

implementation

uses dmu;

{$R *.dfm}

procedure TFrAddTimeSheet.FormCreate(Sender: TObject);
begin
  inherited;
dm.Open_TimeSheet;
 with Dm,select_TimeSheet do
if RecordCount=0 then
  begin
    Insert;
    select_TimeSheetWorkDate.Value:=_today;
    select_TimeSheetUserID.Value:=_userid;
    select_TimeSheetEnterTime.AsString:= get_Time(-4);
    select_TimeSheetWorkTypeID.AsInteger:=1;
    status.Caption:='À»  Ê—Êœ';
  end

 else
   begin
    edit;
    status.Caption:='À»  Œ—ÊÃ';
    select_TimeSheetExitTime.AsString:= get_Time(+4);
  end;
end;

procedure TFrAddTimeSheet.Button1Click(Sender: TObject);
begin
  inherited;
   dm.select_TimeSheet.Post;
close;
end;

procedure TFrAddTimeSheet.Button2Click(Sender: TObject);
begin
  inherited;
  dm.select_TimeSheet.Cancel;
 close;
end;

end.
