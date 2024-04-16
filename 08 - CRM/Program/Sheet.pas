unit sheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, CheckLst,
  YchecklistBox, DBCtrls, Menus, ComCtrls;

type
  TFrep3 = class(TMBaseForm)
    Panel1: TPanel;
    Label9: TLabel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Report_Marketer_TimeSheet: TADOStoredProc;
    Label6: TLabel;
    YWhereEdit6: TYWhereEdit;
    ContractGrid: TYDBGrid;
    DBLkCBUser: TDBLookupComboBox;
    User: TADOTable;
    UserId: TIntegerField;
    UserTitle: TWideStringField;
    UserUserName: TWideStringField;
    UserPassWord: TWideStringField;
    UserMarketerID: TWordField;
    UserDefaultProductID: TWordField;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    Report_Marketer_TimeSheetEnterTime: TStringField;
    Report_Marketer_TimeSheetExitTime: TStringField;
    Report_Marketer_TimeSheetUsefullTime: TIntegerField;
    Report_Marketer_TimeSheetstat: TIntegerField;
    Report_Marketer_TimeSheetCOLUMN1: TIntegerField;
    Report_Marketer_TimeSheetComment: TWideStringField;
    Report_Marketer_TimeSheetWorkDate: TStringField;
    UpDownDate: TUpDown;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBLkCBUserClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ContractGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDownDateClick(Sender: TObject; Button: TUDBtnType);
    procedure YWhereEdit6Change(Sender: TObject);
    procedure ContractGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    procedure Close_Open_TimeSheet;
  public
    { Public declarations }
  end;

Var
   Frep3 : TFrep3;

implementation

uses Dmu, ExportToWord, YShamsiDate;

{$R *.dfm}

procedure TFrep3.Close_Open_TimeSheet;
begin
   with Report_Marketer_TimeSheet do
   begin
      Close;
      Parameters.ParamByName('@Userid').Value := DBLkCBUser.KeyValue;
      Parameters.ParamByName('@FromDate').Value := YWhereEdit6.SinceValue;
      Parameters.ParamByName('@ToDate').Value := YWhereEdit6.ToValue;
      Open;
   end;
end;

procedure TFrep3.BitBtn5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrep3.BitBtn2Click(Sender: TObject);
begin
   ContractGrid.Print;
end;

procedure TFrep3.BitBtn3Click(Sender: TObject);
begin
   ContractGrid.ExportToWord;
end;

procedure TFrep3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrep3.BitBtn6Click(Sender: TObject);
begin
   inherited;
   ContractGrid.CustomizePrint;
end;

procedure TFrep3.DBLkCBUserClick(Sender: TObject);
begin
   inherited;
   Close_Open_TimeSheet;
end;

procedure TFrep3.FormCreate(Sender: TObject);
begin
   inherited;
   User.Open;
   //YWhereEdit6.Text:=copy(ShamsiIncDate( _today,0,-1,0),1,7);
   YWhereEdit6.Text := Copy(_Today,1,7);
end;

procedure TFrep3.ContractGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
   inherited;
   if Report_Marketer_TimeSheet.FieldByName('Stat').AsInteger > 1 then
      Color := $00FFECED //clBlue
   else
      Color := clWhite;
end;

procedure TFrep3.BitBtn1Click(Sender: TObject);
begin
   inherited;
   ContractGrID.ExportToExcel;
end;

procedure TFrep3.FormShow(Sender: TObject);
begin
   inherited;
   if User.RecordCount > 0 then
   begin
      DBLkCBUser.KeyValue := _UserID;
      DBLkCBUserClick(Sender);
   end;
end;

procedure TFrep3.UpDownDateClick(Sender: TObject; Button: TUDBtnType);
begin
   inherited;
   if Trim(YWhereEdit6.Text) = '' then
      YWhereEdit6.Text := Copy(_Today,1,7);

   if Button = btNext then   //TUDBtnType = (btNext, btPrev);
      YWhereEdit6.Text := Copy(ShamsiIncDate(YWhereEdit6.Text+'/01',0,1,0) ,1,7)
   else
      YWhereEdit6.Text := Copy(ShamsiIncDate(YWhereEdit6.Text+'/01',0,-1,0) ,1,7);
   
end;

procedure TFrep3.YWhereEdit6Change(Sender: TObject);
begin
   inherited;
   Close_Open_TimeSheet;
end;

procedure TFrep3.ContractGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   inherited;
   DBGrid_SetFocusAfterExit(ContractGrid,Rect,DataCol,Column,State,clHighlightText);
end;

end.



