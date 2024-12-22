unit SecendArtGroupFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, BaseUnit, ExtActns, ActnList, DB;

type
  TFMSecendArtGroup = class(TMBaseForm)
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    LabHelp: TLabel;
    SpeedButton5: TSpeedButton;
    Label4: TLabel;
    SpeedButton6: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    DBLkCBStore: TDBLookupComboBox;
    DBLkCBFirstArtGroup: TDBLookupComboBox;
    DBEName: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Var
   FMSecendArtGroup: TFMSecendArtGroup;

implementation

Uses SecendArtGroupDM , DMu , YShamsiDate, StoreFM, FirstArtGroupFM;

{$R *.dfm} 


procedure TFMSecendArtGroup.FormCreate(Sender: TObject);
begin
   inherited;
   DMSecendArtGroup := TDMSecendArtGroup.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMSecendArtGroup.FormShow(Sender: TObject);
begin
   inherited;
   With DMSecendArtGroup do
   begin
      QrStore.Open;
      QrSecendArtGroup.Open;
   end;
   //Form_Animate(Self,100);
end;


procedure TFMSecendArtGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   With DMSecendArtGroup do
   begin

   end;
   Qry_CloseAllQry(DMSecendArtGroup);
   FreeAndNil(DMSecendArtGroup);
end;

procedure TFMSecendArtGroup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,DBNavigator1,Nil,Nil,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;


procedure TFMSecendArtGroup.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMSecendArtGroup.SpeedButton5Click(Sender: TObject);
begin
   inherited;
   FMStore := TFMStore.Create(Self); // ⁄—Ì› «‰»«—
   FMStore.ShowModal;

   With DMSecendArtGroup do
   begin
      QrStore.Close;
      QrStore.Open;
   end;
end;

procedure TFMSecendArtGroup.SpeedButton6Click(Sender: TObject);
begin
   inherited;

   FMFirstArtGroup := TFMFirstArtGroup.Create(Self)  ;// ⁄—Ì› ê—ÊÂ «’·Ì
   FMFirstArtGroup.ShowModal;

   With DMSecendArtGroup do
   begin
      QrFirstArtGroup.Close;
      QrFirstArtGroup.Open;
   end;
end;

procedure TFMSecendArtGroup.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
   inherited;

   if Button = nbPost then
      if Trim(DBLkCBFirstArtGroup.Text) = '' then
      begin
         ShowMyMessage('ÅÌ€«„','·ÿ›« ê—ÊÂ «’·Ì —«  ⁄ÌÌ‰ ‰„«ÌÌœ',[mbOK],mtInformation);
         Abort;
      end;
end;

Initialization
   RegisterClass(TFMSecendArtGroup);

end.
