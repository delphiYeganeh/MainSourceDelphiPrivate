unit RepTasksUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, Buttons, StdCtrls,
  MssCalendarPro, Grids, DBGrids, YDbgrid, ADODB, DBCtrls;

type
  TFRepTasks = class(TMBaseForm)
    MssCalendarPro1: TMssCalendarPro;
    spRepUserWork: TADOStoredProc;
    spRepUserWorkPersonTitle: TWideStringField;
    spRepUserWorkCompanyName: TWideStringField;
    spRepUserWorkActionTypeTitle: TWideStringField;
    spRepUserWorkToDoDate: TStringField;
    spRepUserWorkComment: TWideStringField;
    spRepUserWorkTitle: TWideStringField;
    spRepUserWorkCustomerID: TAutoIncField;
    pnlMain: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    SpeedButton4: TSpeedButton;
    lblUserName: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    edtFromDate: TEdit;
    edtToDate: TEdit;
    ActionType: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    FUserID: Integer;
    FUserName: String;
    procedure SetUserID(const Value: Integer);
    procedure SetUserName(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property UserID:Integer read FUserID write SetUserID;
    property UserName:String read FUserName write SetUserName;
  end;

var
  FRepTasks: TFRepTasks;

implementation

uses SearchUnit, dmu;

{$R *.dfm}

procedure TFRepTasks.SetUserID(const Value: Integer);
begin
  FUserID := Value;
end;

procedure TFRepTasks.SetUserName(const Value: String);
begin
  FUserName := Value;
end;

procedure TFRepTasks.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFRepTasks.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  SearchForm:=TSearchForm.Create(Self);
  SearchForm.ShowModal;
  lblUserName.Caption:=UserName;
end;

procedure TFRepTasks.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if ((Trim(edtFromDate.Text)<>'') and (Trim(edtToDate.Text)<>''))
        or
     ((Trim(edtFromDate.Text)='') and (Trim(edtToDate.Text)=''))
  then
  begin
      spRepUserWork.Close;
      spRepUserWork.Parameters.ParamByName('@UserID').Value:=UserID;
      spRepUserWork.Parameters.ParamByName('@FromDate').Value:=Trim(edtFromDate.Text);
      spRepUserWork.Parameters.ParamByName('@ToDate').Value:=Trim(edtToDate.Text);
      if (CheckBox1.Checked) and (ActionType.KeyValue > 0) then
         spRepUserWork.Parameters.ParamByName('@ActionType').Value:= ActionType.KeyValue
      else
         spRepUserWork.Parameters.ParamByName('@ActionType').Value:= 0;
      spRepUserWork.Open;
      if not spRepUserWork.IsEmpty then
          Label3.Caption:=IntToStr(spRepUserWork.RecordCount) + ' „Ê—œ '
      else
          Label3.Caption:=' 0 „Ê—œ '
  end
  else
    ShowMessage('›Ì·œ  «—ÌŒ —«  ‰ŸÌ„ ‰„«ÌÌœ');
end;

procedure TFRepTasks.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  edtFromDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFRepTasks.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  edtToDate.Text:=MssCalendarPro1.Execute('/');
end;

procedure TFRepTasks.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if (spRepUserWork.RecNo mod 2)=0 then
       Color:=$00EAEAEA
  else
       Color:=clWhite;
end;

procedure TFRepTasks.CheckBox1Click(Sender: TObject);
begin
  inherited;
ActionType.Enabled := CheckBox1.Checked;
end;

procedure TFRepTasks.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  { TODO -oparsa : 14030203 }
  if (NewWidth < 884)  or (NewHeight < 469) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
end;

procedure TFRepTasks.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
  
  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;
end;

procedure TFRepTasks.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if spRepUserWork.RecordCount >0 then
    YDBGrid1.ExportToExcel;
end;

procedure TFRepTasks.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if spRepUserWork.RecordCount >0 then
    YDBGrid1.ExportToWord;
end;

procedure TFRepTasks.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if spRepUserWork.RecordCount >0 then
    YDBGrid1.Print;
end;

end.
