unit StoreFM;

interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, ExtActns, ActnList, DB;

type
  TFMStore = class(TMBaseForm)
    Panel5: TPanel;
    LabHelp: TLabel;
    Panel8: TPanel;
    DBGrid3: TDBGrid;
    Panel9: TPanel;
    Label10: TLabel;
    Label1: TLabel;
    DBEName: TDBEdit;
    Panel10: TPanel;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBECode: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMStore: TFMStore;

implementation

Uses StoreDm,Dmu,YShamsiDate;

{$R *.dfm}

procedure TFMStore.FormCreate(Sender: TObject);
begin
   inherited;
   DMStore := TDMStore.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMStore.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,DBNavigator1,Nil,Nil,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;

procedure TFMStore.FormShow(Sender: TObject);
begin
   inherited;
   With DMStore do
   begin
      QrStore.Open;
   end;
   //Color_SetReadOnlyColor(Self,_ReadOnlyColor);
   //Form_Animate(Self,100);
end;

procedure TFMStore.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMStore.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
   inherited;
   DBEName.SetFocus;  
end;

procedure TFMStore.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   With DMStore do
   begin

   end;
   FreeAndNil(DMStore);
end;

Initialization
   RegisterClass(TFMStore);

end.
