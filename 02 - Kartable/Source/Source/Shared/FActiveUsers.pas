unit FActiveUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, UemsVCL,  xpBitBtn, Menus;

type
  TActiveUsers = class(TMBaseForm)
    Button2: TBitBtn;
    Button5: TBitBtn;
    Number: TLabel;
    Action1: TAction;
    YDBGrid1: TYDBGrid;
    Get_ActiveUser: TADOStoredProc;
    Get_ActiveUserUserName: TWideStringField;
    Get_ActiveUserlogintime: TStringField;
    Get_ActiveUserisCartable: TBooleanField;
    Get_ActiveUserProgram: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Get_ActiveUserCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActiveUsers: TActiveUsers;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TActiveUsers.Button5Click(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := false;
  close;
end;

procedure TActiveUsers.Button2Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.Print;
end;

procedure TActiveUsers.FormCreate(Sender: TObject);
begin
  inherited;
  BitBtn1Click(self);
  Timer1.Enabled := true;
end;

procedure TActiveUsers.Get_ActiveUserCalcFields(DataSet: TDataSet);
begin
  inherited;
  if Get_ActiveUserisCartable.AsBoolean then
      Get_ActiveUserProgram.Value := 'ò«— «»·'
  else
      Get_ActiveUserProgram.Value := 'œ»Ì—Œ«‰Â';
end;

procedure TActiveUsers.BitBtn1Click(Sender: TObject);
begin
  inherited;
   Get_ActiveUser.Close;
   Get_ActiveUser.Open;
   Number.Caption:='  ⁄œ«œ :'+IntToStr(DSForm.DataSet.RecordCount);
end;

procedure TActiveUsers.Timer1Timer(Sender: TObject);
begin
  inherited;
   BitBtn1Click(self);
end;

end.
