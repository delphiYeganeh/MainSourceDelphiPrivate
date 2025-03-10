unit UnitFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, BaseUnit, ExtActns, ActnList, DB;

type
  TFMUnit = class(TMBaseForm)
    PopEmkanat: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pnlMain: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEName: TDBEdit;
    DBEUnitCount: TDBEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    LabHelp: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMUnit: TFMUnit;

implementation

Uses UnitDM , DMu , YShamsiDate;

{$R *.dfm}

procedure TFMUnit.FormCreate(Sender: TObject);
begin
   inherited;
   DMUnit := TDMUnit.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMUnit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   With DMUnit do
   begin

   end;
   Qry_CloseAllQry(DMUnit);
   FreeAndNil(DMUnit);
end;

procedure TFMUnit.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,DBNavigator1,Nil,Nil,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;

procedure TFMUnit.FormShow(Sender: TObject);
begin
   inherited;
   With DMUnit do
   begin
      QrUnit.Open;
   end;
   //Form_Animate(Self,100);
end;

procedure TFMUnit.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMUnit.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
   inherited;
   DBEName.SetFocus;
end;

Initialization
   RegisterClass(TFMUnit);

end.
